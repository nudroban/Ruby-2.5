require_relative 'mashine.rb'

car = Mashine.new
for x in 1..4
  x = rand(1..4)
  puts x
  if x == 1
    puts "Моя машина"
    car.akselerate
    car.stopping
  elsif x == 2
    puts "Сажусь в заз"
    zaz = Mashine.new
    zaz.akselerate
    zaz.stopping
  elsif x == 3
    puts "Сажусь в Ваз"
    vaz = Mashine.new
    vaz.akselerate
    vaz.stopping
  else
    puts "Нет машины"
    exit
  end
  end