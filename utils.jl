using Franklin, Dates
using HTTP, JSON

# GitHub repository metadata, fetched once per build and cached
const GITHUB_REPO_INFO = Dict{String,Dict{String,Any}}()

function github_repo_info(repo)
    get!(GITHUB_REPO_INFO, repo) do
        headers = haskey(ENV, "GITHUB_TOKEN") ? ["Authorization" => "Bearer $(ENV["GITHUB_TOKEN"])"] : Pair{String,String}[]
        try
            response = HTTP.get("https://api.github.com/repos/$repo", headers)
            return JSON.parse(String(response.body))
        catch e
            # e.g. rate limiting or network issues
            @warn "Could not fetch GitHub info for $repo" exception = e
            return Dict{String,Any}()
        end
    end
end

htmlescape(s) = replace(s, "&" => "&amp;", "<" => "&lt;", ">" => "&gt;", "\"" => "&quot;")

function hfun_ghdescription(params)
    description = something(get(github_repo_info(params[1]), "description", nothing), "")
    return htmlescape(description)
end

const STAR_SVG = """<svg viewBox="0 0 16 16" width="14" height="14" fill="currentColor" aria-hidden="true"><path d="M8 .25a.75.75 0 0 1 .673.418l1.882 3.815 4.21.612a.75.75 0 0 1 .416 1.279l-3.046 2.97.719 4.192a.751.751 0 0 1-1.088.791L8 12.347l-3.766 1.98a.75.75 0 0 1-1.088-.79l.72-4.194L.818 6.374a.75.75 0 0 1 .416-1.28l4.21-.611L7.327.668A.75.75 0 0 1 8 .25Z"/></svg>"""

function hfun_ghstars(params)
    stars = get(github_repo_info(params[1]), "stargazers_count", nothing)
    stars === nothing && return ""
    return """<span class="card-stars" title="GitHub stars">$(STAR_SVG)$(stars)</span>"""
end

function hfun_jlinsert(arg)
    arg = first(arg)
    if arg == "social-icons"
        return social_icons()
    elseif arg == "read-time"
        return read_time()
    elseif arg == "pagetags"
        return pagetags()
    else
        error("unknown argument arg = $arg")
    end
end

function read_time()
    src = joinpath(Franklin.PATHS[:folder], Franklin.FD_ENV[:CUR_PATH])
    nwords = length(split(read(src, String)))
    nmin = ceil(Int, nwords / 220)
    return "$(nmin) minute$(nmin > 1 ? "s" : "")"
end

function social_icons()
    icons = locvar("social")
    isempty(icons) && return ""
    io = IOBuffer()
    println(io, "<div class=\"social-icons\">")
    for (name, url) in pairs(icons)
        name = string(name)
        # svg = Franklin.convert_html("{{ define svg.$(name) }} {{ insert svg.html }} {{ undef svg.$(name) }}")
        svg = Franklin.convert_html("{{ svg $(name) }}")
        svg = strip(svg)
        isempty(svg) && (@warn "could not find svg icon for social.$name, skipping"; continue)
        aref = """&nbsp; <a href="$(url)" title="$(name)">$(svg)</a> &nbsp;"""
        println(io, aref)
    end
    println(io, "</div>")
    r = Franklin.convert_html(String(take!(io)))
    return r
end

function pagetags()
    io = IOBuffer()
    for tag in Franklin.locvar("tags")
        print(io, "<span class=\"tag\"><a href=\"/tag/$(tag)\">$(tag)</a></span>")
    end
    return strip(String(take!(io)))
end

function hfun_eval(arg)
    x = Core.eval(Franklin, Meta.parse(join(arg)))
    io = IOBuffer()
    show(io, "text/plain", x)
    return String(take!(io))
end

function hfun_definetagtitle()
    return hfun_define(["title", "#$(locvar("fd_tag"))"])
end

function hfun_define(arg)
    vname = arg[1]
    vdef = repr(get(arg, 2, nothing))
    Franklin.set_vars!(Franklin.LOCAL_VARS, [vname => vdef, ]) # TODO: Use set_var! instead ???
    return ""
end
function hfun_undef(arg)
    arg = arg[1]
    # print("Evaluating {{ undef $arg }}:")
    # print(" ($arg = $(locvar(arg))) => ")
    haskey(Franklin.LOCAL_VARS, arg) && delete!(Franklin.LOCAL_VARS, arg)
    # println(" ($arg = $(locvar(arg)))")
    # set_vars!(LOCAL_VARS, [String(vname) => String(vdef), ])
    return ""
end

function hfun_list_posts(folders)
    pages = String[]
    root = Franklin.PATHS[:folder]
    for folder in folders
        startswith(folder, "/") && (folder = folder[2:end])
        cd(root) do
            foreach(((r, _, fs),) ->  append!(pages, joinpath.(r, fs)), walkdir(folder))
        end # do
    end
    filter!(x -> endswith(x, ".md"), pages)
    for i in eachindex(pages)
        pages[i] = replace(pages[i], r"\.md$"=>"")
    end
    return list_pages_by_date(pages)
end

function hfun_svg(arg)
    name = arg[1]
    svg = Franklin.convert_html("{{ define svg.$(name) }} {{ insert svg.html }} {{ undef svg.$(name) }}")
    # delete html comments
    svg = strip(replace(strip(svg), r"^<!--.*-->$"m => ""))
    return svg
end

function list_pages_by_date(pages)
    # Collect required information from the pages
    items = Dict{Int,Any}()
    for page in pages
        date = pagevar(page, "date")
        date === nothing && error("no date found on page $page")
        date = Date(date)
        title = something(pagevar(page, "markdown_title"), pagevar(page, "title"))
        title === nothing && error("no title found on page $page")
        title = Franklin.md2html(title; stripp=true)
        stitle = something(pagevar(page, "title"), title) # for sorting (no <code> etc)
        url = get_url(page)
        push!(get!(items, year(date), []), (date=date, title=title, stitle=stitle, url=url))
    end
    # Write out the list
    io = IOBuffer()
    for k in sort!(collect(keys(items)); rev=true)
        year_items = items[k]
        # Sort primarily by date (in reverse) and secondary by title
        lt = (x, y) -> x.date == y.date ? x.stitle > y.stitle : x.date < y.date
        sort!(year_items; lt=lt, rev=true)
        print(io, """
            <div class="posts-group">
              <div class="post-year">$(k)</div>
              <ul class="posts-list">
            """)
        for item in year_items
            print(io, """
                    <li class="post-item">
                      <a href=\"$(item.url)\">
                        <span class="post-title">$(item.title)</span>
                        <span class="post-day">$(Dates.format(item.date, "d u"))</span>
                      </a>
                    </li>
                """)
        end
        print(io, """
              </ul>
            </div>
            """)
    end
    return String(take!(io))
end

hfun_taglist() = list_pages_by_date(globvar("fd_tag_pages")[locvar(:fd_tag)])

function hfun_get_url()
    Franklin.get_url(Franklin.locvar("fd_rpath"))
end

# function hfun_list(params)
#     tag = params[1]
#     TAG_PAGES = globvar("fd_tag_pages")
#     c = IOBuffer()
#     # -------------------------------------------
#     # add your logic here
#     write(c, "<h1>Tag: $tag</h1>")
#     write(c, "<ul>")
#     rpaths = TAG_PAGES[tag]
#     sorter(p) = begin
#         pvd = pagevar(p, "date")
#         if isnothing(pvd)
#             return Date(Dates.unix2datetime(stat(p * ".md").ctime))
#         end
#         return pvd
#     end
#     sort!(rpaths, by=sorter, rev=true)
#     for rpath in rpaths
#         title = pagevar(rpath, "title")
#         if isnothing(title)
#             title = "/$rpath/"
#         end
#         write(c, "<li><a href=\"/$rpath/\">$title</a></li>")
#     end
#     write(c, "</ul>")
#     # -------------------------------------------
#     return String(take!(c))
# end

let counter = 0
    global function hfun_unique_id(n=nothing)
        if n !== nothing
            counter += 1
        end
        return "unique-id-$(counter)"
    end
end

function hfun_markdown2html(arg)
    arg = first(arg)
    if arg == "website_description" || arg == "title" || arg == "markdown_title"
        str = locvar(arg)
        @assert str !== nothing
        return Franklin.md2html(str; stripp=true)
    else
        error("unknown argument arg = $arg")
    end
end
