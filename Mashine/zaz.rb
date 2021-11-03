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
for x in 1..3 do
  zaz.akselerate
  if x == 1
    zaz.left
    puts "Shopping"
  elsif x == 2
    zaz.right
    puts "Drink coffe"
  else
    zaz.left
    puts "Go home"
  end
end
zaz.engine_count

