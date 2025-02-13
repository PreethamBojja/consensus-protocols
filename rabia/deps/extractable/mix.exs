defmodule Extractable.Mixfile do
  use Mix.Project

  def project do
    [app: :extractable,
     version: "0.2.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     consolidate_protocols: Mix.env != :test, # Required until elixir-lang/elixir#6270 is fixed.
     name: "Extractable",
     description: description(),
     source_url: "https://github.com/Qqwy/elixir-extractable",
     package: package()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev}
    ]
  end

  defp description do
    """
    A lightweight reusable Extractable protocol, allowing extracting elements one-at-a-time from a collection.
    """
  end

  defp package() do
    [
      name: :extractable,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Qqwy/Wiebe-Marten Wijnja"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/Qqwy/elixir-extractable"}
    ]
  end
end
