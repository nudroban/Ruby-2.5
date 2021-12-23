
require_relative 'mashine'
require_relative 'mashinizer'
require_relative 'accum'
require_relative 'public_transport'


class Trolleybus < Mashine
  def initialize(name)
    super
    @pass = PublicTransport.new
  end

  attr_reader :name

  def accum
    @acc.condition
  end

  def starting
    if accum
      @pass.loading_passengers
      super
    else
      puts 'Passengers not sit!'
    end
  end

  def stopping
    super
    @pass.uploading_passengers
  end
end

trolleybus = []

100.times do
  troll = Trolleybus.new(Mashinizer.mashine_name)
  trolleybus.append(troll)
end

arr = %w[starting go_ahead left right braking]

50_000.times do
  method = rand(1..arr.length)
  value = rand(1..trolleybus.length) - 1
  trolleybus[value].name
  trolleybus[value].send(arr[method - 1])
end
