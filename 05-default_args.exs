defmodule Concat do
  def join(a, b, sep \\ " ") do # The default is " "
    a <> sep <> b
  end
end

IO.puts Concat.join("Hello", "world")      #=> Hello world
IO.puts Concat.join("Hello", "world", "_") #=> Hello_world
