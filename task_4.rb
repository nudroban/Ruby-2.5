print 'Enter the current price: '
current_price =  gets.to_i
print 'Enter the markup precent: '
percent = gets.to_i / 100.0
old_price = current_price / (1 + percent)
puts old_price
