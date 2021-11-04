require_relative 'mashine.rb'

#class Userinput < Mashine
#  def initialize
#    sit_down
#  end

#  def sit_down
#    puts "ВЫБОР ПЕРСОНАЖА: "
#    puts "ВОДИТЕЛЬ-нажмите 1; ПАССАЖИР-нажмите 2: "
#    user = gets
#  
#    if user.to_i == 1
#      driver
#    elsif user.to_i == 2
#      passenger
#      sit_down
#    else 
#      puts "Ты кто еще такой?А-ну вылазь!!!"
#      sit_down
#    end
#  end

#def driver
#    puts "Проверить зеркала,пристегнуть ремень,снять ручник"
#  end

#  def passenger
#    puts "ЭЭЭЙЙЙ!А где водитель"
#  end
#end

#user = Userinput.new
zaz = Mashine.new
volvo = Mashine.new
audi = Mashine.new
for x in 1..3
  if x == 1
  zaz.akselerate
  zaz.go_ahead
  zaz.left
  puts "Shopping"
  zaz.engine_count
  elsif x == 2
    volvo.akselerate
    volvo.right
    puts "Coffe-Brake"
    volvo.engine_count
  else
    audi.warming_up
    audi.warming_up
    audi.akselerate
    audi.left
    puts "Go home"
    audi.engine_count
    end
end

zaz.summary_engine_count
