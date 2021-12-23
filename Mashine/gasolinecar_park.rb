# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'

class Gasoline_car < Mashine
  def initialize(name)
    @engine = false
    super
  end

  def akselerate
    super
    @engine = true
  end

  def go_ahead
    if @engine
      super
    else
      puts "не могу выполнить, #{@engine}"
    end
  end

  def right
    if @engine
      super
    else
      puts "не могу выполнить, #{@engine}"
    end
  end

  def left
    if @engine
      super
    else
      puts "не могу выполнить, #{@engine}"
    end
  end

  def braking
    if @engine
      super
    else
      puts "не могу выполнить, #{@engine}"
    end
  end

  def stopping
    if @engine
      super
      @engine = false
    else
      puts "не могу выполнить, #{@engine}"
    end
  end
end

cars = []
names = []
number = []

10.times do
  name = Mashinizer.mashine_name
  names.append(name) unless names.include? name
end

names.each do |car|
  car = Gasoline_car.new(car)
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

cars.each { |car| puts car.name, car.accum, car.number, car.engine_count }
Mashine.summary_engine_count
