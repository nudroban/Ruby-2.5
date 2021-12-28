# frozen_string_literal: true

# This GrandMa autopark
require_relative 'public_transport'

class Trolleybus < PublicTransport

  def accum
    @acc.condition
  end

  def starting
    if accum
      loading_passengers
      super
    else
      puts 'Passengers not sit!'
    end
  end

  def stopping
    super
    uploading_passengers
  end
end

