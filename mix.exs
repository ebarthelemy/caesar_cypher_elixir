defmodule CaesarCypherElixir.Mixfile do
  use Mix.Project

  def project do
    [app: :caesar_cypher_elixir,
     escript: escript_config(), # CLI executable
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
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
      {:ex_doc, "~> 0.15.0"}, # ExDoc is a documentation generation tool for Elixir.
      {:earmark, "~> 1.1"}    # Earmark is a pure-Elixir Markdown converter.
    ]
  end

  # Make a command line executable with escript.
  defp escript_config do
    [main_module: (CaesarCypherElixir)]
  end

end
