# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'

class Electro_car < Mashine
  def initialize(name)
    @engine = false
    super
  end

  def akselerated
    engine
    @engine = true
    puts "Поехали!"
  end

  def go_ahead
    if @engine
      super
    else
      puts "Запустите двигатель!"
    end
  end

  def right
    if @engine
      super
    else
      puts "Запустите двигатель!"
    end
  end

  def left
    if @engine
      super
    else
      puts "Запустите двигатель!"
    end
  end

  def braking
    if @engine
      super
    else
      puts "Запустите двигатель!"
    end
  end

  def stopping
    if @engine
      super
      @engine = false
    else
      puts "Запустите двигатель!"
    end
  end
end

cars = []
names = []
number = []

50.times do
  name = Mashinizer.mashine_name
  names.append(name) unless names.include? name
end

names.each do |car|
  car = Electro_car.new(car)
  num = Numberizer.number
  cars.append(car)
  number.append(num)
end

arr = %w[akselerated go_ahead left right braking stopping]

50.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  puts cars[value].name
  cars[value].send(arr[method - 1])
end

cars.each { |car| puts car.name, car.accum, car.number, car.engine_count }
Mashine.summary_engine_count
