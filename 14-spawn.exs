pid = spawn fn -> 1 + 2 end #spawn takes a function which it will execute in another process
IO.inspect pid #PID<0.76.0> PID (process identifier) but the process is dead

IO.inspect Process.alive?(pid) #false
IO.inspect Process.alive?(self()) #true -> We can retrieve the PID of the current process by calling self/0:
