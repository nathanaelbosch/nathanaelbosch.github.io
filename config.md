<!-- RSS settings -->

@def website_title = "Nathanael Bosch"
@def website_description = ""
@def website_url = "https://nathanaelbosch.github.io"
@def generate_rss = true


<!-- Theme specific options -->
<!-- @def title = "Nathanael Bosch" -->
@def sitename = "Nathanael Bosch"
@def author.name = "Nathanael Bosch"
@def author = "Nathanael Bosch"


<!-- Social icons -->
@def social = (
        github = "https://github.com/nathanaelbosch",
        twitter = "https://twitter.com/nathanaelbosch",
        googlescholar = "https://scholar.google.com/citations?user=2vejDygAAAAJ&hl=en",
        email = "mailto:nathanael.bosch@uni-tuebingen.de",
    )

<!-- Logo -->
@def logo.mark = "\$"
@def logo.text = "cd /home/nath "

<!-- Menu -->
@def menu = [
        (name = "publications", url = "/publications/"),
        (name = "talks", url = "/talks/"),
        (name = "code", url = "/code/"),
        (name = "cv", url = "/assets/cv.pdf"),
        #(name = "about me", url = "/about_me/"),
        #(name = "posts", url = "/posts/"),
        #(name = "research", url = "/research/"),
    ]


\newcommand{\codetoggle}[1]{
~~~
<div class="toggle-code-wrap" style="position:relative">
<input id="{{ unique_id new }}" type="checkbox" checked=true">
<label for="{{ unique_id }}" class="switch">
  <span class="slider round"></span>
</label>
<div class="toggle-code-new">
~~~
`````julia
!#1
`````
~~~
</div>
<div class="toggle-code-old">
~~~
`````julia-old
!#1
`````
~~~
</div>
</div>
~~~
}

\newcommand{\pubbutton}[2]{
~~~<a href=#2 class=pubbutton>#1</a>~~~
}

\newcommand{\styletext}[2]{
~~~
<span style="#1">
~~~
#2
~~~
</span>
~~~
}

\newcommand{\yearsec}[1]{
@@pubyear
\styletext{float:right; text-align:right}{#1}
@@
}


\newcommand{\getgithubdescription}[1]{
```julia:snippet
#hideall
using HTTP
using JSON

function get_github_description(repo)
    repo_url = "https://github.com/" * repo
    # Extract owner and repo name from the URL
    parts = split(strip(repo_url, '/'), '/')
    owner = parts[end-1]
    repo_name = parts[end]

    # GitHub API endpoint for repository information
    api_url = "https://api.github.com/repos/$owner/$repo_name"

    # Make a GET request to the GitHub API
    response = HTTP.get(api_url)

    if response.status == 200
        # Parse the JSON response
        repo_info = JSON.parse(String(response.body))

        # Extract and return the description
        return get(repo_info, "description", "No description available")

    else
        return "Error: $(response.status) - Unable to fetch repository information"
    end
end

println(get_github_description("!#1"))
```
\textoutput{snippet}
}

\newcommand{\clickablecard}[2]{
~~~<a class="card" href=#1>~~~
!#2
~~~</a>~~~
}
