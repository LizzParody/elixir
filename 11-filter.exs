odd? = &(rem(&1, 2) != 0)
odd_num = Enum.filter(1..5, odd?)
IO.inspect odd_num

odd2? = fn(x) -> rem(x, 2) != 0 end
odd_num2 = Enum.filter(1..5, odd2?)
IO.inspect odd_num2
