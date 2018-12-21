defmodule Hello do
  def print(lang \\ :en)
  def print(:en), do: "Hello World!!"
  def print(:es), do: "Hola Inmundo!!"
  def print(:fr), do: "Bonjour!!"
  def print(:ch), do: "你好!!"

  def some(x \\ 1) do
    x
  end
end

IO.puts(Hello.print())
IO.puts(Hello.print(:es))
IO.puts(Hello.print(:fr))
IO.puts(Hello.print(:ch))
IO.puts(Hello.some())
IO.puts(Hello.some(5))
