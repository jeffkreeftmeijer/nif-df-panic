defmodule DiskUsage.MixProject do
  use Mix.Project

  def project do
    [
      app: :disk_usage,
      version: "0.1.0",
      elixir: "~> 1.11-dev",
      start_permanent: Mix.env() == :prod,
      rustler_crates: [disk_usage: []],
      compilers: [:rustler] ++ Mix.compilers(),
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
      {:rustler, "~> 0.21.1"}
    ]
  end
end
