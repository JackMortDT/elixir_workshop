defmodule Greeter do

  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> phrase
  end
  def hello(name) when is_binary(name) do
    phrase(name)
  end
  def hello(%{name: name, lastname: lastname} = _person) do
    phrase(name, lastname)
  end
  def hello(%{name: name} = _person) do
    phrase(name)
  end

  defp phrase(name, lastname), do: "Hello #{name} #{lastname}"
  defp phrase(name), do: "Hello #{name}"

end
