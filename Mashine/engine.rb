# frozen_string_literal: true

# This classes for car engines!!!
class Engine
  def initialize
    @engine = false
  end

  def on
    @engine = true
    puts 'Двигатель заведен'
  end

  def off
    @engine = false
    puts 'Двигатель заглушен'
  end
end

class ElectroEngine < Engine
end

class GasolinEngine < Engine
end

class DieselEngine < Engine
end
