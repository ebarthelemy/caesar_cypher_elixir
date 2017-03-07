defmodule CaesarCypherElixir do
  def main(argv) do
    argv
      |> parse_args
      |> process
    System.halt(0)
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [help: :boolean])
    case parse do
      {[help: true], ______________________, _} -> {:help}
      {[shift: shift], ["encrypt", message], _} -> {:encrypt, message, shift |> String.to_integer}
      _________________________________________ -> {:help}
    end
  end

  def process({:encrypt, message, shift}) do
    Caesar.Cypher.encrypt(message, shift)
      |> IO.puts
  end

  def process({:help}) do
    IO.puts """
    usage ./caesar_cypher_elixir <command> <message> --<shift_number>
    """
  end
end
