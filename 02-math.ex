defmodule Math do
  def sum(a, b) do
    a + b
  end
end

#to print we need to compile it first with elixirc, it will create the .beam file then go to
#iex> Math.sum(1, 3) and it will print it.

#If we want to do it scripting we do IO.puts Math.sum(1, 3)
