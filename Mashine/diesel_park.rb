# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'
require_relative 'accum'
require_relative 'engine'

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

class DieselCar < Mashine
  def initialize(name)
    super
    @eng = DieselEngine.new
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
    if @eng.condition == false
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
  end
end

cars = []

100.times do
  car = DieselCar.new(Mashinizer.mashine_name)
  cars.append(car)
end

arr = %w[starting go_ahead left right braking]

50000.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  cars[value].name
  cars[value].send(arr[method - 1])
end

File.open('diesel_car.html', 'w') do |file|
  file.write(header)
  cars.each do |car|
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
      <th colspan="4">Summary Engine Count is: #{DieselCar.summary_engine_count} times</th>
    </tr>
  STRING
  file.write(footer)
end
