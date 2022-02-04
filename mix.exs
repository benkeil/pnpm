defmodule Pnpm.MixProject do
  use Mix.Project

  @source_url "https://github.com/benkeil/pnpm"
  @version "0.0.13"

  def project do
    [
      app: :pnpm,
      version: @version,
      elixir: "~> 1.13",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      name: "pnpm",
      docs: docs(),
      source_url: @source_url,
      homepage_url: @source_url,
      deps: deps(),
      dialyzer: [
        plt_add_apps: [:mix]
      ],
      test_coverage: [
        tool: ExCoveralls,
        ignore_modules: [Mix.Tasks.Pnpm.Install]
      ],
      preferred_cli_env: [
        "coveralls.circleci": :test,
        "coveralls.travis": :test,
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  defp description do
    """
    A task to install phoenix npm dependencies with pnpm.
    """
  end

  defp package do
    [
      name: :pnpm,
      maintainers: "Ben Keil",
      licenses: ["MIT"],
      links: %{
        "Changelog" => "#{@source_url}/blob/master/CHANGELOG.md",
        "GitHub" => @source_url
      },
      files: ~w(mix.exs lib LICENSE.md README.md CHANGELOG.md)
    ]
  end

  defp docs do
    [
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      extras: [
        "README.md",
        "CHANGELOG.md",
        "LICENSE.md",
      ]
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
      {:git_ops, "~> 2.4.5", runtime: false},
      {:excoveralls, "~> 0.14", only: [:test]},
      {:ex_doc, "~> 0.27", runtime: false},
      {:junit_formatter, "~> 3.1", only: [:test]},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
    ]
  end
end
