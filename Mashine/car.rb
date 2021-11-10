require_relative 'mashine.rb'


opel = Mashine.new("ОПЕЛЬ")
zaz = Mashine.new("ЗАЗ")
vaz = Mashine.new("ВАЗ")
for x in 1..5
arr = %w[akselerate go_ahead engine_count summary_engine_count left right braking stopping]
method = rand(1..arr.length)
cars = [opel, zaz, vaz]
value = rand(1..cars.length)
cars[value - 1].name
cars[value - 1].send(arr[method - 1])
end