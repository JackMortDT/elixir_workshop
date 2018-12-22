defmodule Greeter do

  def hello(%{name: name, lastname: lastname} = person) do
    IO.puts("Hello #{name} #{lastname}")
  end
  def hello(%{name: name} = person) do
    IO.puts "Hello #{name}"
    IO.inspect person
  end

end
