# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'

class Trucks < Mashine
  def initialize(name)
    @load = false
    @eng = Disengine.new
    super
  end

  def akselerate
    @load = true
    puts "Загружаю авто!"
    super
    @eng = true
  end

  def go_ahead
    if @load && @eng
      super
    else
      puts "Загрузите авто!"
    end
  end

  def left
    if @load && @eng
      super
    else
      puts "Загрузите авто!"
    end
  end

  def right
    if @load && @eng
      super
    else
      puts "Загрузите авто!"
    end
  end

  def braking
    if @load && @eng
      super
    else
      puts "Загрузите авто!"
    end
  end

  def stopping
    super
    puts "Выгрузка!"
    @load = false
    @eng = false
  end
end

class Disengine
  def initialize
    @engine = false
  end
end

cars = []
marks = %w[КамАЗ ГАЗ ЗИЛ УРАЛ КРАЗ Benz Man Daf Scania Iveco Volvo Renault Nissan Tatra Mitsubishi]
numbers = []

marks.each do |car|
  car = Trucks.new(car)
  num = Numberizer.number
  cars.append(car)
  numbers.append(num)
end

arr = %w[akselerate go_ahead left right braking stopping]

50.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  puts cars[value].name
  cars[value].send(arr[method - 1])
end

cars.each do |car|
  puts car.name
  puts "#{car.accum}%"
  puts car.engine_count
end

Trucks.summary_engine_count
