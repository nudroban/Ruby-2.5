for x in 1..5
 x += 1
end
def method
    if x % 2 == 0 
	x = x / 2
    else 
	x = x * 3 + 1
    end
end

x = 0
a = []

while method == 1
  a.append(x)
end
  puts "#{x} #{a}"

