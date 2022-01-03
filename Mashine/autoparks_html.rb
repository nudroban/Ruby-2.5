# frozen_string_literal: true

require_relative 'electrocars_park'
require_relative 'diesel_park'
require_relative 'dump_trucks'
require_relative 'autobus_park'
require_relative 'trolleybus_park'
require_relative 'exavators'
require_relative 'gasolinecar_park'

# Page html for autoparks
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

elcars = []
gascars = []
discars = []
dumptrucks = []
exavators = []
autobuses = []
trolleybuses = []
array = []
arr = %w[starting go_ahead left right braking]

File.open('autoparks.html', 'w') do |file|
  file.write(header)
  100.times do
    electro = ElectroCar.new(Mashinizer.mashine_name)
    elcars.append(electro)
  end
  file.write <<~STRING
    <tr>
      <th colspan="4">ELECTROCARS</th>
    </tr>
  STRING
  elcars.each do |car|
    50.times do
      method = rand(1..arr.length)
      value = rand(1..elcars.length) - 1
      elcars[value].send(arr[method - 1])
    end
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
      <th colspan="4">Summary Engine Count is :#{ElectroCar.summary_engine_count} times</th>
    </tr>
  STRING
  100.times do
    diesel = DieselCar.new(Mashinizer.mashine_name)
    discars.append(diesel)
  end
  file.write <<~STRING
    <tr>
      <th colspan="4">DIESELCARS</th>
    </tr>
  STRING
  discars.each do |car|
    50.times do
      method = rand(1..arr.length)
      value = rand(1..discars.length) - 1
      discars[value].send(arr[method - 1])
    end
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
      <th colspan="4">Summary Engine Count is :#{DieselCar.summary_engine_count} times</th>
    </tr>
  STRING
  100.times do
    gasoline = GasolinCar.new(Mashinizer.mashine_name)
    gascars.append(gasoline)
  end
  file.write <<~STRING
    <tr>
      <th colspan="4">GASOLINECARS</th>
    </tr>
  STRING
  gascars.each do |car|
    50.times do
      method = rand(1..arr.length)
      value = rand(1..gascars.length) - 1
      gascars[value].send(arr[method - 1])
    end
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
      <th colspan="4">Summary Engine Count is :#{GasolinCar.summary_engine_count} times</th>
    </tr>
  STRING
  100.times do
    dump = DumpTrucks.new(Mashinizer.mashine_name)
    dumptrucks.append(dump)
  end
  file.write <<~STRING
    <tr>
      <th colspan="4">DUMPTRUCKS</th>
    </tr>
  STRING
  dumptrucks.each do |car|
    50.times do
      method = rand(1..arr.length)
      value = rand(1..dumptrucks.length) - 1
      dumptrucks[value].send(arr[method - 1])
    end
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
      <th colspan="4">Summary Engine Count is :#{DumpTrucks.summary_engine_count} times</th>
    </tr>
  STRING
  100.times do
    exavator = Exavator.new(Mashinizer.mashine_name)
    exavators.append(exavator)
  end
  file.write <<~STRING
    <tr>
      <th colspan="4">EXAVATORS</th>
    </tr>
  STRING
  exavators.each do |car|
    50.times do
      method = rand(1..arr.length)
      value = rand(1..exavators.length) - 1
      exavators[value].send(arr[method - 1])
    end
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
      <th colspan="4">Summary Engine Count is :#{Exavator.summary_engine_count} times</th>
    </tr>
  STRING
  100.times do
    bus = Autobus.new(Mashinizer.mashine_name)
    autobuses.append(bus)
  end
  file.write <<~STRING
    <tr>
      <th colspan="4">AUTOBUSES</th>
    </tr>
  STRING
  autobuses.each do |car|
    50.times do
      method = rand(1..arr.length)
      value = rand(1..autobuses.length) - 1
      autobuses[value].send(arr[method - 1])
    end
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
      <th colspan="4">Summary Engine Count is :#{Autobus.summary_engine_count} times</th>
    </tr>
  STRING
  100.times do
    troll = Trolleybus.new(Mashinizer.mashine_name)
    trolleybuses.append(troll)
  end
  file.write <<~STRING
    <tr>
      <th colspan="4">TROLLEYBUSES</th>
    </tr>
  STRING
  trolleybuses.each do |car|
    50.times do
      method = rand(1..arr.length)
      value = rand(1..trolleybuses.length) - 1
      trolleybuses[value].send(arr[method - 1])
    end
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
      <th colspan="4">Summary Engine Count is :#{Trolleybus.summary_engine_count} times</th>
    </tr>
  STRING
  file.write <<~STRING
    <tr>
      <th colspan="4">Summary Engine Count All Autoparks is: #{ElectroCar.summary_engine_count + DieselCar.summary_engine_count + GasolinCar.summary_engine_count + Autobus.summary_engine_count + DumpTrucks.summary_engine_count + Trolleybus.summary_engine_count + Exavator.summary_engine_count} times</th>
    </tr>
  STRING
  file.write(footer)
end
