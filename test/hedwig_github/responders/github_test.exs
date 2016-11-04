
defmodule HedwigGithub.Responders.GithubTest do
  use Hedwig.RobotCase

  # timeout https://github.com/hedwig-im/hedwig/pull/31
  # @tag start_robot: true, name: "alfred", responders: [{HedwigGithub.Responders.Github, []}]
  # test "github elixir - responds with elixir", %{adapter: adapter, msg: msg} do
  #   send adapter, {:message, %{msg | text: "alfred: github elixir"}}
  #   assert_receive {:message, %{text: text}}
  #   assert text == "yo"
  # end

  test "#search_repository" do
    q = "elixir"
    result = HedwigGithub.Responders.Github.search_repository(q)
    assert String.contains? result, "elixir-lang/elixir"
  end
end
