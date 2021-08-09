require_relative 'list'

list = List.new()

for x in 1..10 { list.apply(x) }

list.show
