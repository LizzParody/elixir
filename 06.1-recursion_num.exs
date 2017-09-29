defmodule Recursion do
  def print_num(n) when n <= 1 do
    IO.puts n
  end

  def print_num(n) do
    IO.puts n
    print_num(n - 1)
  end
end

Recursion.print_num(3)
