defmodule Hello do
  def print(lang \\ :en)
  def print(:en), do: "Hello World!!"
  def print(:es), do: "Hola Inmundo!!"
end

IO.puts(Hello.print())
IO.puts(Hello.print(:es))
