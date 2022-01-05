+++
date = "2021-01-05"
title = "Hello World"
var"layout-post" = nothing
tags = ["website", "julia"]
rss = "Hello World"

# Dependent variables
website_description = replace(rss, "*" => "")
rss_pubdate = Date(date)
+++

~~~
<h1><a href="{{ get_url }}">{{ markdown2html title }}</a></h1>
~~~

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

## Dolor

Sit [`amet`](https://lipsum.com).

```plaintext
@info "Hello world"
```
