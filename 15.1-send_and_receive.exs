parent = self()

spawn fn -> send(parent, {:hello, self()}) end
IO.puts(receive do
  {:hello, pid} -> "Hello from #{inspect pid}"
end)
