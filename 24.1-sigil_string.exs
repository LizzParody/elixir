IO.puts ~s(this is a string with "double" quotes, not 'single' ones)
IO.inspect ~w(foo bar hi) #["foo", "bar", "hi"]
IO.inspect ~w(foo bar hi)a #[:foo, :bar, :hi] atom
IO.inspect ~w(foo bar hi)c #['foo', 'bar', 'hi'] charlist
IO.inspect ~w(foo bar hi)s #["foo", "bar", "hi"] string

IO.puts ~s(String with escape codes \x26 #{"inter" <> "polation"}) #String with escape codes & interpolation
IO.puts ~S(String without escape codes \x26 without #{interpolation})  #String without escape codes \x26 without #{interpolation}

IO.puts ~s"""
this is
a heredoc string
"""
