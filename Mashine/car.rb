require_relative 'mashine.rb'

car = Mashine.new
zaz = Mashine.new
vaz = Mashine.new
for x in 1..5
  x = rand(1..4)
  if x == 1
    puts "Моя машина"
    car.akselerate
    car.left
  elsif x == 2
    puts "Сажусь в заз"
    zaz.akselerate
    zaz.left
  elsif x == 3
    puts "Сажусь в Ваз"
    vaz.warming_up
    vaz.warming_up
    vaz.warming_up
    vaz.akselerate
    vaz.go_ahead
    vaz.right
  else
    puts "Нет машины"
    exit
  end
  end