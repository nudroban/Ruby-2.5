require_relative 'list'

list = List.new()
for x in 1..20 do
  list.apply(x)
end

list.show
