# HedwigGithub

A GitHub responder for Hedwig.

## Installation

After you create a Hedwig robot, add hedwig_github to your list of dependencies in mix.exs:


```elixir
def deps do
  [{:hedwig_github, "~> 0.1.1"}]
end
```

Ensure `hedwig_github` is started before your application:

```elixir
def application do
  [applications: [:hedwig_github]]
end
    ```

Lastly, add HedwigGithub.Responders.Github as a responder to your robot in mix.exs.
