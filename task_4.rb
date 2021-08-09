print 'Enter the current price: '
current_price = gets
if current_price.to_i > 0 
  current_price = current_price.to_i
  puts "string + " + current_price
else 
  puts "#{current_price} is not Integer"
end
print 'Enter the markup precent: '
percent = gets.to_i / 100.0
old_price = current_price / (1 + percent)
puts old_price
