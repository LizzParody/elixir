double_num = Enum.map([1, 2, 3], fn x -> x * 2 end)
IO.inspect double_num

multiply = Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> k * v end)
IO.inspect multiply

range = Enum.map(1..3, fn x -> x * 2 end)
IO.inspect range
