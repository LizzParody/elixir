regex = ~r/foo|bar/
"foo" =~ regex #true
"bat" =~ regex #false


"HELLO" =~ ~r/hello/ #false
"HELLO" =~ ~r/hello/i #true i makes it case insensitie

# Eight different delimiters:
~r/hello/.   
~r|hello|
~r"hello"
~r'hello'
~r(hello)
~r[hello]
~r{hello}
~r<hello>
