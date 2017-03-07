defmodule CaesarCypherElixirTest do
  use ExUnit.Case
  doctest CaesarCypherElixir

  test "parse_args help" do
    argv = ["help"]
    assert CaesarCypherElixir.parse_args(argv) == {:help}
  end

  test "parse_args encrypt" do
    argv = ["encrypt", "abc", "--shift", "1"]
    assert CaesarCypherElixir.parse_args(argv) == {:encrypt, "abc", 1}
  end
end
