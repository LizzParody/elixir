IO.inspect for n <- 1..4, do: n * n #[1, 4, 9, 16]
             #^generator^

# Pattern matching
values = [good: 1, good: 2, bad: 3, good: 4]
IO.inspect for{:good, n} <- values, do: n * n #[1, 4, 16]

# Filters
multiple_of_3? = fn(n) -> rem(n, 3) == 0 end
IO.inspect for n <- 0..10, multiple_of_3?.(n), do: n * n  #[0, 9, 36, 81]

# Cartesian product of two list, for nested loop
IO.inspect for i <- [:a, :b, :c], j <- [1, 2], do:  {i, j} #[a: 1, a: 2, b: 1, b: 2, c: 1, c: 2]
