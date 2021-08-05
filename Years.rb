# integer

number = 1936 - 1825		# сколько лет прошло
vdays = number / 4		# высокостных лет
novdays = number - vdays	# не высокостных лет	
weeks = (365 / 7) * number	# недели

puts number
puts vdays
puts novdays
puts weeks
puts (weeks + vdays) - weeks
