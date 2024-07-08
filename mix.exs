defmodule NewMetric.MixProject do
  use Mix.Project

  def project do
    [
      app: :new_metric,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:kujira, "~> 0.1.61"}
    ]
  end
end
