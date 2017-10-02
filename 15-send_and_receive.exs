send self(), {:hello, "world"}

IO.puts(receive do
  {:hello, msg} -> msg
  {:world, msg} -> "won't match"
end)


send self(), {:hi, "what's up"}
IO.puts(receive do
  {:hi, msg} -> msg <>" lix"
end)


IO.puts(receive do
  {:hello, msg} -> msg
after
  1000 -> "Nothing after 1s"
end)


#When a message is sent to a process, the message is stored in the process mailbox.
#The receive/1 block goes through the current process mailbox searching for a
#message that matches any of the given patterns.
