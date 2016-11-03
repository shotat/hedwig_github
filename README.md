# HedwigGithub

A GitHub responder for Hedwig.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `hedwig_github` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:hedwig_github, "~> 0.1.0"}]
    end
    ```

  2. Ensure `hedwig_github` is started before your application:

    ```elixir
    def application do
      [applications: [:hedwig_github]]
    end
    ```

