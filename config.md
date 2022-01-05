<!-- RSS settings -->

@def website_title = "Nathanael"
@def website_description = "Lorem Ipsum"
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
