require_relative 'list'

alist = List.new()

for x in 1..10000 do
  alist.apply(x)
end

alist.show
