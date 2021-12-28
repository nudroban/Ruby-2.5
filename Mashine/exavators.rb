# frozen_string_literal: true

# This is Denis autopark
require_relative 'engine'
require_relative 'trucks'

class Exavator < Trucks
  def initialize(name)
    super
    @eng = DieselEngine.new
  end

  def accum
    @acc.condition
  end

  def starting
    if @eng.condition == false
      load
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
    unload
    @eng.off
  end
end
