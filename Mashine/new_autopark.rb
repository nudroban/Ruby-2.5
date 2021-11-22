# frozen_string_literal: true

require_relative 'mashine'
require_relative 'mashinizer'
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

cars = []
names = []
number = []

100.times do
  name = Mashinizer.mashine_name
  names.append(name) unless names.include? name
end

names.each do |car|
  car = Mashine.new(car)
  num = Numberizer.number
  cars.append(car)
  number.append(num)
end

arr = %w[akselerate go_ahead left right braking stopping]

20_000.times do
  method = rand(1..arr.length)
  value = rand(1..cars.length) - 1
  cars[value].name
  cars[value].send(arr[method - 1])
end

File.open('cars.html', 'w') do |file|
  file.write(header)
  cars.each do |car|
    file.write <<~STRING
      <tr>
        <th>#{car.name}</th>
        <th>#{car.number}</th>
        <th>#{car.accum}</th>
        <th>#{car.engine_count}</th>
      </tr>
    STRING
  end
  file.write(footer)
end
