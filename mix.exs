defmodule HedwigGithub.Mixfile do
  use Mix.Project

  def project do
    [app: :hedwig_github,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [
      :hedwig,
      :tentacat,
      :logger,
    ],
  mod: {HedwigGithub, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options

  defp description do
    """
    A GitHub responder for Hedwig.
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :hedwig_github,
     maintainers: ["shotat"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/shotat/hedwig_github"}]
  end

  defp deps do
    [
      {:tentacat, "~> 0.5"},
      {:hedwig, "~> 1.0.0-rc.4"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
