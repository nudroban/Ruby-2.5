require_relative 'list'

list = List.new()
for x in 1..10000000000000000 do
  list.apply(x)
end

list.show
