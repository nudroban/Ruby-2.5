arr = Array[1, 4, 5, "Hello"]
puts(arr)

name = Array["Алена", "Илья","Андрей", "Oleg", "Rostyan"]
puts(name[1])
puts(name)
name[0] = "Денис"
name[3] = "George"
puts(name)

list = Array.new
list[0] = 1991
list[8] = 2000
puts list
puts list.length()
puts name.reverse()
puts list.include? 2001

terminals = {
	"city" => "Kramatorsk",

	2 => 1,
	:month => "september"
}

puts terminals["city"]
puts terminals[:month]
