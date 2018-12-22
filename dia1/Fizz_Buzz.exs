defmodule Fizz_Buzz do

  def fizz_buzz(n) do
    Enum.map(1..n, fn x -> x end)
    |> Enum.map( fn x -> {x, do_fizz_buzz(x)} end )
  end

  def do_fizz_buzz(n) do
    (rem(n,3) == 0 and rem(n,5) == 0) && "FizzBuzz" ||
    (rem(n,3) == 0) && "Fizz" ||
    (rem(n,5) == 0) && "Buzz"
  end

end
