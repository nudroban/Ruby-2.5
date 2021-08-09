@shoud = 'Yes'
Pi_usnd = 3.14

class MainProj
  @@main_price = 22

  def initilize
    puts PI
  end

  def kolbasa
    val = 'sausage'
    puts val
  end
end

def block1
  val = 22
end

temp = gets.to_i
if temp > 0
  puts 'the weather is warm'
elsif temp > 30
  puts 'the weather is hot'
elsif temp < 0
  puts 'the weather is cold'
else
  puts 'have a nice day'
end

litera = gets
case litera
  when "a\n"
    puts "A"
  when "b\n"
    puts "B"
  else
    puts "fuck off"
end 
