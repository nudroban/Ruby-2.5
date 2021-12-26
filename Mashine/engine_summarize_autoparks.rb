require_relative 'electrocars_park'
require_relative 'diesel_park'
require_relative 'dump_trucks'
require_relative 'autobus_park'
require_relative 'trolleybus_park'
require_relative 'exavators'
require_relative 'gasolinecar_park'

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
        <th>ElectroCar</th>
        <th>DieselCar</th>
        <th>GasolinCar</th>
        <th>Autobus</th>
        <th>Trolleybus</th>
        <th>DumpTrucks</th>
        <th>Exavator</th>
  STRING
end

def footer
  <<~STRING
       </table>
      </body>
    </html>
  STRING
end

File.open('autoparks_enginer.html', 'w') do |file|
  file.write(header)
  file.write <<~STRING
    <tr>
      <th>#{ElectroCar.summary_engine_count}</th>
      <th>#{DieselCar.summary_engine_count}</th>
      <th>#{GasolinCar.summary_engine_count}</th>
      <th>#{Autobus.summary_engine_count}</th>
      <th>#{Trolleybus.summary_engine_count}</th>
      <th>#{DumpTrucks.summary_engine_count}</th>
      <th>#{Exavator.summary_engine_count}</th>
    </tr>
  STRING
  file.write <<~STRING
    <tr>
      <th colspan="7">Summary Engine Count All Autoparks is: #{ElectroCar.summary_engine_count + DieselCar.summary_engine_count + GasolinCar.summary_engine_count + Autobus.summary_engine_count + DumpTrucks.summary_engine_count + Trolleybus.summary_engine_count + Exavator.summary_engine_count} times</th>
    </tr>
  STRING
  file.write(footer)
end
