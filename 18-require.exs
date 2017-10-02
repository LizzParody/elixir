iex> Integer.is_odd(3)
** (UndefinedFunctionError) function Integer.is_odd/1 is undefined or private. However there is a macro with the same name and arity. Be sure to require Integer if you intend to invoke this macro
iex> require Integer
Integer
iex> Integer.is_odd(3)
true

# in order to invoke Integer.is_odd/1, we need to first require the Integer module.
