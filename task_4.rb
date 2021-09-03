def get_summ
  print 'Enter the current price: '
  current_price = gets
  if current_price.to_i >= 0 
    current_price = current_price.to_i
  else 
    puts "GoodBye My Dear Friend"
    exit
  end
  current_price
end

def get_percent
  print 'Enter the markup precent: '
  percent = gets 
  if percent.to_f > 0
    percent = percent.to_f / 100
  else
    puts "number is not right"
    exit
  end 
  1 + percent
end

step = 0
summ = 0 
while step < 2 do
  old_price = get_summ / get_percent
  puts "first price: #{old_price.round(2)}"
  step += 1
  summ += old_price
end
puts "Выполненные операции: #{step}"
puts "Общая цена закупки: #{summ.round(2)} "
