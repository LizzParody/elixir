defmodule Math do
  def double_each([]) do
    []
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end
end
IO.inspect Math.double_each([1, 2, 3])
#The process of taking a list and mapping over it is known as a map algorithm.
