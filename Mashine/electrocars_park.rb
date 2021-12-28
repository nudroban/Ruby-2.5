# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'
require_relative 'accum'
require_relative 'engine'

class ElectroCar < Mashine

  def accum
    @acc.condition
  end

  def starting
    if accum
      super
    else
      puts @acc.condition.to_s
    end
  end
end
