# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'
require_relative 'accum'
require_relative 'engine'

class PublicTransport < Mashine
  def initialize(name)
    super
    @pass = false
  end

  def loading_passengers
    @pass = true
    puts 'Посадка пассажиров!'
  end

  def condition
    @pass
  end

  def uploading_passengers
    @pass = false
    puts 'Высадка пассажиров!'
  end
end
