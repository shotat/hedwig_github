defmodule HedwigGithub.Responders.Github do
  use Hedwig.Responder

  @usage """
  bot: github <repository name>
  """
  respond ~r/github(?: +)(.+)/i, msg do
    %{matches: %{1 => query}} = msg
    query
    |> search_repository
    |> reply(msg)
  end

  def search_repository(repository_name) do
    client = Tentacat.Client.new
    params = %{
      q: repository_name,
      per_page: 1,
      sort: "stars",
    }
    options = [ pagination: :none ]

    # FIXME: PR to Tentacat to pass options for search api
    # response = Tentacat.Search.repositories(params, client)
    response = Tentacat.get "search/repositories", client, params, options
    case response do
    %{"incomplete_results" => false, "items" => [item | _]} ->
      parse_item(item)
    _ ->
      "?"
    end
  end


  defp parse_item(item) do
    %{"html_url" => url, "stargazers_count" => stars} = item
    "#{url} :star: #{stars}"
  end
end
