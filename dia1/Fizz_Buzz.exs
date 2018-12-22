defmodule Fizz_Buzz do

  def fizz_buzz(n) do
    Enum.map(1..n, fn x -> x end)
    |> Enum.map( fn x -> {x, do_fizz_buzz(x)} end )
  end

  defp do_fizz_buzz(n) do
    (rem(n,3) == 0 and rem(n,5) == 0) && fizz_and_buzz(3,5) ||
    (rem(n,3) == 0) && fizz_and_buzz(3) ||
    (rem(n,5) == 0) && fizz_and_buzz(5)
  end

  defp fizz_and_buzz(3,5), do: "FizzBuzz"
  defp fizz_and_buzz(3), do: "Fizz"
  defp fizz_and_buzz(5), do: "Buzz"

end
