iex> {:ok, file} = File.open "hello", [:write]
{:ok, #PID<0.47.0>}
iex> IO.binwrite file, "world"
:ok
iex> File.close file
:ok
iex> File.read "hello"
{:ok, "world"}
iex> File.read! "hello"
"world"
