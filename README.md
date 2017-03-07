# CaesarCypherElixir

See https://learncryptography.com/classical-encryption/caesar-cipher

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `caesar_cypher_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:caesar_cypher_elixir, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/caesar_cypher_elixir](https://hexdocs.pm/caesar_cypher_elixir).

## Run the CaesarCypherElixir module using mix

```
mix run -e 'CaesarCypherElixir.main(["encrypt", "abc", "--shift", "1"])'
```

## Generate the CaesarCypherElixir CLI executable using escript

```
mix escript.build
```

Examples:

```
./caesar_cypher_elixir help                    
```

```
./caesar_cypher_elixir encrypt "abc def" --shift 1                      
```
