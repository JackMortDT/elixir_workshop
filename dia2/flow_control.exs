result = if String.valid?("Hello") do
  "Valid"
else
  "Invalid"
end

IO.puts result

tuple = {:ok, 123.12}
result = case tuple do
  {:ok, result} when is_float(result) -> result * 2
  {:ok, result} when is_binary(result) -> result
  {:error, reason} -> "Error #{reason} "
  _ -> "Catch all"
end

IO.puts result

tuple2 = {:ok, "hello"}
result = case tuple2 do
  {:ok, result} when is_float(result) -> result * 2
  {:ok, result} when is_binary(result) -> result
  {:error, reason} -> "Error #{reason} "
  _ -> "Catch all"
end

IO.puts result


file = File.read(System.get_env("HOME") <> "/.gitconfig")
result = case file do
  {:ok, text} -> String.length(text)
  {:error, reason} -> "Can't read because #{reason}"
  _ -> "Unrecheable case"
end

IO.puts result


case :even do
  :odd -> "Odd"
  _ -> "Unrecheable case"
end

result = cond do
  2 + 2 == 5 -> "Not true"
  2 * 2 == 3 -> "Neither"
  1 + 1 == 2 -> "Truthy"
  true ->  "No way"
end
IO.puts result
