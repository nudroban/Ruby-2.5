# frozen_string_literal: true

require_relative 'mashine'

opel = Mashine.new('ОПЕЛЬ')
zaz = Mashine.new('ЗАЗ')
vaz = Mashine.new('ВАЗ')
arr = %w[akselerate go_ahead engine_count summary_engine_count left right braking stopping]
cars = [opel, zaz, vaz]
50.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  cars[value].name
  cars[value].send(arr[method - 1])
end
cars.each { |car| car.acc_condition }