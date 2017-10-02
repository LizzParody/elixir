defmodule User do # We defined a struct named User.
  defstruct name: "Jhon", age: 27 # defstruct defines what fields the struct will have along with their default values.
end
%User{}
%User{age: 27, name: "Jhon"}
%User{age: 26, name: "Liz"}

# The same techniques (and the same syntax) from maps apply to structs as well:
jhon = %User{}
jhon.name

meg = %{jhon | name: "Meg"}
