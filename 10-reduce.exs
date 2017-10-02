reduce = Enum.reduce(1..3, 0, &+/2)
IO.puts reduce

reduce2 = Enum.reduce(1..3, 0, fn (x, acc) -> x + acc end)
IO.puts reduce2
