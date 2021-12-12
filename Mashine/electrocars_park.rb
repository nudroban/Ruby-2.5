# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'
require_relative 'accum'
require_relative 'engine'

class ElectroCar < Mashine
  def initialize
    super
    @acc = Accum.new
    @eng = ElectroEngine.new
    @name = Mashinizer.mashine_name
    @num = Numberizer.number
  end

  def name
    puts @name
  end

  def number
    puts @num
  end
  
  def accum
    puts "Заряд аккумулятора :#{@acc.condition}%"
  end

  def starting
    @acc.engine_enough?
    turn_on
    @eng.on
    super
    @acc.discharging
  end

  def go_ahead
    if @eng == true
      super
      @acc.charging
    else
      @eng.off
    end
  end

  def right
    if @eng == true
      super
      @acc.charging
    else
      @eng.off
    end
  end

  def left
    if @eng == true
      super
      @acc.charging
    else
      @eng.off
    end
  end

  def braking
    if @eng == true
      super
      @acc.charging
    else
      @eng.off
    end
  end

  def stopping
    super
    @eng.off
  end
end
cars = []
10.times do
  car = ElectroCar.new
  cars.append(car)
end

arr = %w[starting go_ahead left right braking]

50.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  print cars[value].name
  cars[value].send(arr[method - 1])
end
cars.each do |car|
  car.name
  car.number
  car.engine_count
  car.accum
end
ElectroCar.summary_engine_count