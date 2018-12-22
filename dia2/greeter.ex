defmodule Greeter do
  def hello(map) do
    IO.puts "Hello #{map[:name]}"
  end
end
