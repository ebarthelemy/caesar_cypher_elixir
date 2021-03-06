defmodule Caesar.Cypher do
  require Logger

  # Module attributes
  @alphabet_size Application.get_env(:caesar_cypher_elixir, :alphabet_size)

  @moduledoc """
  Caesar Cypher module which maps characters to new characters.
  """

  @doc """
  Encrypt the message by applaying a mapping that shifts the alphabet by the
  `shift` value.

  ## Examples
    ```
    iex > Caesar.Cypher.encrypt("hello world!", 1)
    "gdkkn vnqkc!"
    ```
  """
  def encrypt(message, shift) do
    Logger.debug("encrypting \"#{message}\" with a shift number: #{shift}.")
    message
    # Convert message to char_list.
      |> to_char_list
    # Iterate over list, apply shift mapping.
      |> Enum.map(&shift_char(&1, shift))
    # Return list as a binary string.
      |> List.to_string
  end

  defp shift_char(char, shift) do
    case char do
      # ?a -> 97, ?z -> 122, so is that character within the range of 97 to 122?
      chr when chr in (?a..?z) -> calculate_mapping(?a, chr, shift)
      chr when chr in (?A..?Z) -> calculate_mapping(?A, chr, shift)
      chr -> chr
    end
  end

  def calculate_mapping(base_letter, char, shift) do
    # Find the ASCII integer of the char and normalize it
    # by substracting the size of the alphabet.
    normalize = &(&1 - @alphabet_size)
    # Ensure shift number is within the alphabet size.
    shift_num = rem(shift, @alphabet_size)
    # Calculate the shifted value.
    base_letter + rem(char - normalize.(base_letter) - shift_num, @alphabet_size)
  end
end
