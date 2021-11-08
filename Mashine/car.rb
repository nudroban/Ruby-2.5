require_relative 'mashine.rb'

opel = Mashine.new(1)
zaz = Mashine.new("zaz")
vaz = Mashine.new()
arr = %w[warming_up akselerate go_ahead engine_count summary_engine_count left right braking stopping]
method = rand(1..arr.length)
cars = [opel, zaz, vaz]
value = rand(1..cars.length)
cars[value - 1].send(arr[method - 1])
