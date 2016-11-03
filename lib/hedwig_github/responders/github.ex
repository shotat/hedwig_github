defmodule HedwigGithub.Responders.Github do
  use Hedwig.Responder

  hear ~r/github/, message do
    send message, "yo"
  end
end
