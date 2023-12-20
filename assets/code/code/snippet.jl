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

println(get_github_description("nathanaelbosch/PSDMatrices.jl"))