class List
  def initialize
    @list = {}
  end

  def apply(number)
    @list === number ? @list[number] : add_number(number)
  end
 
  def branch_present?(number)
    @list === number ? true : false
  end

  def add_number(number)
    arr = []
    x = number
    while x != 1
      unless branch_present?(x)
        x % 2 == 0 ? x = x / 2 : x = (3 * x) + 1
        arr.append(x)
      end
    end
    @list[number] = arr
  end

  def show
    @list.keys.each do |el|
      puts "#{el} #{@list[el]}"
    end
  end
end

list = List.new()

for x in 1..10000 do
  list.apply(x)
end

list.show
