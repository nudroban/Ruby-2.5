# frozen_string_literal: true

require_relative 'mashine'
require 'faker'

# opel = Mashine.new('ОПЕЛЬ')
# zaz = Mashine.new('ЗАЗ')
# vaz = Mashine.new('ВАЗ')
# cars = [opel, zaz, vaz]
cars = []
names = []
step = 0
50.times do
  name = Faker::Vehicle.make
  if names.include? name
    names.append("#{name}-#{step}")
  else
    names.append(name)
  end
  step += 1
end
names.each do |car|
  car = Mashine.new(car)
  cars.append(car)
end

arr = %w[akselerate go_ahead left right braking stopping]

100.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  cars[value].name
  cars[value].send(arr[method - 1])
end

cars.each { |car| print car.name, car.acc_condition }
