defprotocol Size do
  @doc "Calculates the size (and not the length!) of a data structure"
  def size(data) # The Size protocol expects a function called size that receives one argument
end

defimpl Size, for: BitString do
  def size(string), do: byte_size(string)
end

defimpl Size, for: Map do
  def size(map), do: map_size(map)
end

defimpl Size, for: Tuple do
  def size(tuple), do: tuple_size(tuple)
end

IO.puts Size.size("foo") #3
IO.puts Size.size({:ok, "hello"}) #2
IO.puts Size.size(%{label: "some label"}) #1
