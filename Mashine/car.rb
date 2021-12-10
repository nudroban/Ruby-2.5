# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'

cars = []
names = []
number = []

50.times do
  name = Mashinizer.mashine_name
  names.append(name) unless names.include? name
end

names.each do |car|
  car = Mashine.new(car)
  num = Numberizer.number
  cars.append(car)
  number.append(num)
end

arr = %w[akselerate go_ahead left right braking stopping]

50.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  puts cars[value].name
  cars[value].send(arr[method - 1])
end

cars.each { |car| puts car.name, car.accum, car.number, car.engine_count}
Mashine.summary_engine_count
