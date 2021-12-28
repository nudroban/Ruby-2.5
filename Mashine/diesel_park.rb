# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'
require_relative 'accum'
require_relative 'engine'

class DieselCar < Mashine
  def initialize(name)
    super
    @eng = DieselEngine.new
  end

  def accum
    @acc.condition
  end

  def starting
    if @eng.condition == false
      super
      @eng.on
    else
      puts 'Двигатель заведен!'
    end
  end

  def go_ahead
    if @eng.condition
      super
    else
      @eng.off
      puts 'Двигатель не заведен!'
    end
  end

  def right
    if @eng.condition
      super
    else
      @eng.off
      puts 'Двигатель не заведен!'
    end
  end

  def left
    if @eng.condition
      super
    else
      @eng.off
      puts 'Двигатель не заведен!'
    end
  end

  def braking
    if @eng.condition
      super
    else
      @eng.off
      puts 'Двигатель не заведен!'
    end
  end

  def stopping
    super
    @eng.off
  end
end

