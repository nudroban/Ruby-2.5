# frozen_string_literal: true

# This GrandMa autopark
require_relative 'public_transport'

def header
  <<~STRING
    <html>
     <head><meta content='text/html'>
      <title>MySite</title>
      <style type="text/css">
       table {
         margin: auto;
    }
      </style>
     </head>
     <body>
      <table border="1" width="50%" aligh="center">
        <th>Mark</th>
        <th>Number</th>
        <th>Acc</th>
        <th>Engine Count</th>
  STRING
end

def footer
  <<~STRING
       </table>
      </body>
    </html>
  STRING
end

class Trolleybus < PublicTransport
  def initialize(name)
    super
    @num = Numberizer.number
  end

  attr_reader :name

  def number
    @num
  end

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

File.open('trolleybus.html', 'w') do |file|
  file.write(header)
  trolleybus.each do |car|
    file.write <<~STRING
      <tr>
        <th>#{car.name}</th>
        <th>#{car.number}</th>
        <th>#{car.accum}%</th>
        <th>#{car.engine_count}</th>
      </tr>
    STRING
  end
  file.write <<~STRING
    <tr>
      <th colspan="4">Summary Engine Count is: #{Trolleybus.summary_engine_count} times</th>
    </tr>
  STRING
  file.write(footer)
end
