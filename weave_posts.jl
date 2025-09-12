using Weave, Dates, Pkg

Weave.set_chunk_defaults!(
    :wrap=>false,
    :line_width=>200,
)

posts = [
    (
        folder = "flow-matching",
        title = "Flow Matching Guide and Code in Julia",
        date = Date(2025, 5, 7),
        tags = ["julia"]
    ),
    (
        folder = "test",
        title = "Test post",
        date = Date(2050, 1, 1),
        tags = ["julia"]
    ),
]


Base.@kwdef mutable struct FranklinJLMarkdown <: Weave.WeaveFormat
    description = "Franklin.jl Markdown"
    extension = "md"
    codestart = "```julia"
    codeend = "```\n"
    termstart = codestart
    termend = codeend
    outputstart = "```"
    outputend = "```\n\n"
    fig_ext = ".png"
    mimetypes = ["image/png", "image/svg+xml", "image/jpg",
                "text/markdown", "text/plain"]
    out_width = nothing
    out_height = nothing
    fig_pos = nothing
    fig_env = nothing
    # specials
    preserve_header = true
end
Weave.register_format!("franklin", FranklinJLMarkdown())

function Weave.render_figures(docformat::FranklinJLMarkdown, chunk)
    fignames = chunk.figures
    caption = chunk.options[:fig_cap]
    result = ""
    figstring = ""

    @info "Weave.render_figures" docformat chunk fignames

    length(fignames) > 0 || (return "")

    if !isnothing(caption)
        result *= "![$caption]($(fignames[1]))\n"
        for fig in fignames[2:end]
            result *= "\\fig{$fig}\n"
            println("Warning, only the first figure gets a caption\n")
        end
    else
        for fig in fignames
            result *= "\\fig{$fig}\n"
        end
    end
    return result
end

Weave.register_format!(
    "tweaked-github",
    Weave.GitHubMarkdown(
        # outputstart = "`",
        # outputend = "`",
    ),
)


for post in posts
    folder, title, date, tags = post

    # 1. convert the notebook to a .md
    src, dest = "posts/$folder/notebook.ipynb", "posts/$folder/index.md"
    Weave.convert_doc(src, dest)

    Pkg.activate("posts/$folder")
    Weave.weave(
        dest;
        doctype="tweaked-github",
        fig_ext=".svg",
        # fig_path="../../_assets/posts/$folder/",
    )
    Pkg.activate(".")

    # 2. construct the header
    header = """
    +++
    date = "$date"
    title = "$title"
    var"layout-post" = nothing
    tags = $tags
    rss = "$title"

    # # Dependent variables
    # website_description = replace(rss, "*" => "")
    # rss_pubdate = $date
    +++
    """

    # 3. read the generated content and rewrite with header prepended
    content = read(dest, String)
    open(dest, "w") do io 
        write(io, header * "\n" * content)
    end
end
