# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'

cars = []
names = %w[Lada Tesla Volkswagen Mercedes-Benz Ferrari Porsche Audi Alfa Romeo BMW Renault Lamborghini Toyota Volvo AMG
           Geely Dodge Rolls-Royce Kia Maserati Mustang]
number = []

names.each do |car|
  car = Mashine.new(car)
  num = Numberizer.number
  cars.append(car)
  number.append(num)
end

arr = %w[akselerate go_ahead left right braking stopping]

55.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  cars[value].name
  cars[value].send(arr[method - 1])
end

cars.each { |car| print car.name, car.number, car.engine_count }
Mashine.summary_engine_count
