print 'Enter the current price: '
current_price = gets
if current_price.to_i > 0 
  current_price = current_price.to_i
elsif current_price.to_i <= 0
  puts "GoodBye My Dear Friend"
  exit
else 
  puts "#{current_price} is not Integer"
  exit
end

print 'Enter the markup precent: '
percent = gets 
if percent.to_f > 0
  percent = percent.to_f / 100
else
  puts "number is not right"
  exit
end
old_price = current_price / (1 + percent)
puts "first price: #{old_price.round(2)}"

