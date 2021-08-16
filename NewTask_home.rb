# В войске 5555 человек. На 10 солдат приходится 1 капрал, на 5 
# капралов- 1 офицер, на 9 офицеров- 1 генерал. Сколько в войске солдат?

humans = 5555
generals = 5555 / 505         #x=5555/(9+45+450)
officers = 9 * generals
corporals = 45 * generals
soldiers = 450 * generals

puts generals
puts officers
puts corporals
puts soldiers 
