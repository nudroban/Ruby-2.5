# frozen_string_literal: true

# This Mama autpark
require_relative 'engine'
require_relative 'public_transport'

class Autobus < PublicTransport
  def initialize(name)
    super
    @eng = GasEngine.new
  end

  def accum
    @acc.condition
  end

  def starting
    if @eng.condition == false
      loading_passengers
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
    uploading_passengers
  end
end
