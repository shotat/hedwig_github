defmodule HedwigGithub.Responders.GithubTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{HedwigGithub.Responders.Github, []}]
  test "github - responds with yo", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "github"}}
    assert_receive {:message, %{text: text}}
    assert text == "yo"
  end
end
