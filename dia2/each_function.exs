l = [1,2,3,4,5,6]

IO.puts("Enum.each(l, fn x -> IO.puts x end)")
Enum.each(l, fn x -> IO.puts x end)

IO.puts("l |> Enum.each(fn x -> IO.puts x end)")
l |> Enum.each(fn x -> IO.puts x end)

IO.puts("l |> Enum.each(&(IO.puts &1))")
l |> Enum.each(&(IO.puts &1))

IO.puts("l |> Enum.each(&(IO.puts/1))")
l |> Enum.each(&(IO.puts/1))

IO.puts("l |> Enum.each(&IO.puts/1)")
l |> Enum.each(&IO.puts/1)
