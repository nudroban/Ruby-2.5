def user_input
  puts "Check unit: 1-cell, 2-far"
  unit = gets
  puts "Enter degree:"
  deg = gets
  {"unit":unit, "deg":deg}
end

def convert
  result = user_input
  unit = result[:unit].to_i
  deg = result[:deg].to_f
  if unit == 1
    answer = (deg - 32) / ( 9.0 / 5 )
  elsif unit == 2 
    answer = (deg * 9.0 / 5.0) + 32
  else 
    puts "NOT WRONG VARIABLE"
  end
  answer
end

File.open("convert", "w") do |file|
  file.write(convert) 
end
