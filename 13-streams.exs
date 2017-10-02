odd? = &(rem(&1, 2) != 0)
result = 1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum
IO.puts result #7500000000

stream = Stream.cycle([1, 2, 3]) #Stream.cycle/1 can be used to create a stream that cycles a given enumerable infinitely.
cycle = Enum.take(stream, 10)
IO.inspect cycle #[1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

stream2 = Stream.unfold("hełło", &String.next_codepoint/1)
codepoints = Enum.take(stream2, 3)
IO.inspect codepoints #["h", "e", "ł"]

#Stream.resource/3 which can be used to wrap around resources, guaranteeing
#they are opened right before enumeration and closed afterwards, even in the case of failures
