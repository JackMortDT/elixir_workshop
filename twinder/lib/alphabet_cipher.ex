defmodule Twinder.AlphabetCipher do

  def message_to_encode() do
    "meetmebythetree"
  end

  def repeated_message(word) do
    String.length(word)
    word_length = String.length(message_to_encode())
    String.pad_trailing(word, word_length, word)
  end

  def get_alphabet() do
    letters = for letter <- ?a..?z, do: letter
    get_alphabet(letters, [{'A',letters}], String.length(letters), "", [])
  end

  def get_alphabet(letters, array, 0, secret) do
    letters = rotate_word(letters)
    [h|_t] = letters
    array = array ++ [{[h], letters}]
    secret
  end

  def get_alphabet(letters, array, length, secret, t) do
    letters = rotate_word(letters)
    [h|tail] = letters
    [_ | length_tail] = tail
    array = array ++ [{[h], letters}]
    message_length = String.length(message_to_encode())
    get_alphabet(letters, array, length(length_tail), generate_secret(h, letters), t)
  end

  def generate_secret(letter, letters) do
    generate_secret(letter, letters, @alphabet, [])
  end

  def generate_secret(_, [], [], secret), do: secret
  def generate_secret(letter, letters, alphabet, secret) do
    [secret_letter | rest_of_letters] = letters
    [column | alphabet_rest] = alphabet
    generate_secret(letter, rest_of_letters, alphabet_rest, [{letter, column, secret_letter} | secret])
  end

  def encode(message, secret) do

  end

  def decode(secret_message, secret) do

  end

  def rotate_word([h|t]) do
    t ++ [h]
  end

end
