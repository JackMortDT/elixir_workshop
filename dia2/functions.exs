handle_request = fn
  {:ok, 200, result} -> "OK #{result}"
  {:ok, 203, result} -> "Created #{result}"
  {:error, 404} -> "Not found"
  {:error, 500} -> "Server error"
end

handle_request.({:ok, 200, "Hello world"})
|> IO.puts

handle_request.({:ok, 203, "Hello created"})
|> IO.puts

handle_request.({:error, 404})
|> IO.puts
