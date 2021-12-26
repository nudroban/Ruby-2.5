# frozen_string_literal: true

# This classes for car engines!!!
class Engine
  def initialize
    @engine = false
  end

  def on
    @engine = true
  end

  def condition
    @engine
  end

  def off
    @engine = false
  end
end

class GasolinEngine < Engine
end

class DieselEngine < Engine
end

class GasEngine < Engine
end
