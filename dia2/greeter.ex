defmodule Greeter do

  def hello(names, language \\ "es")
  def hello(names, language) when is_list(names) do
    names
    |> Enum.join(", ")
    |> phrase(language)
  end
  def hello(name, language) when is_binary(name) do
    phrase(name, language)
  end
  def hello(%{name: name, lastname: lastname} = _person, language) do
    phrase(name, lastname, language)
  end
  def hello(%{name: name} = _person, language) do
    phrase(name, language)
  end

  defp phrase(name, lastname, "es"), do: "Hola #{name} #{lastname}"
  defp phrase(name, lastname, "en"), do: "Hello #{name} #{lastname}"
  defp phrase(name, "es"), do: "Hola #{name}"
  defp phrase(name, "en"), do: "Hello #{name}"

end
