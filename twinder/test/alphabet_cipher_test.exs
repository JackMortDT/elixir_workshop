defmodule Twinder.AlphabetCipher.Test do
  use ExUnit.Case
  alias Twinder.AlphabetCipher

  test "Cipher a message" do
    message = "meetmebythetree"
    secret = "scone"
    result = AlphabetCipher.encode(message, secret)
    assert result == "egsgqwtahuiljgs"
  end

  test "Decode a message" do
    message = "egsgqwtahuiljgs"
    secret = "scone"
    result = AlphabetCipher.decode(message, secret)
    assert result == "meetmebythetree"
  end

end
