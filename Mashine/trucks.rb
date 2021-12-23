# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'
require_relative 'accum'
require_relative 'engine'

class Trucks < Mashine
  def initialize(name)
    super
    @load = false
  end

  def load
    @load = true
  end

  def condition
    @load
  end

  def unload
    @load = false
  end
end
