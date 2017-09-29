defmodule Math do
  def sum_list([], accumulator) do
    accumulator
  end

  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end
end

IO.puts Math.sum_list([1, 2, 3], 0) #=> 6
# The process of taking a list and reducing it down to one value is known as
# a reduce algorithm and is central to functional programming.
