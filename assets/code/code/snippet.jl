# This file was generated, do not modify it. # hide
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

    # Make a GET request to the GitHub API; fall back to an empty description
    # if the request fails (e.g. rate limiting or network issues)
    try
        response = HTTP.get(api_url)
        repo_info = JSON.parse(String(response.body))
        return something(get(repo_info, "description", nothing), "")
    catch e
        @warn "Could not fetch GitHub description for $repo" exception = e
        return ""
    end
end

println(get_github_description("nathanaelbosch/generative-latent-optimization"))