class Mashine
  def initialize 
     engine
     sleep 2
     akselerate
     sleep 2 
     speedup
 end

  def akselerate
    puts "Набираем скорость"
  end

  def go_ahead
    puts "Ехать вперед"
  end

  def left
    puts "Поворот влево"
  end

  def right
    puts "Поворот вправо"
  end

  def braking
    puts "Торможение"
  end

  private

  def engine
step = 0
sum = 0    
arr = []
    while step < 3 do
    puts "Поворот ключа зажигания"
sleep 2    
step += 1
    sum += step
    arr.append(step)
    end
puts "Завелась с #{arr.length} раза"
end

   def speedup
    title = ['Норм едем','ЭЭЭ,не так быстро','Блин,Сеня тормози!!!мы разобьемся!!!']
    value = 60
    title.each do |i|
    puts "#{value}km/h  #{i}"
    sleep 4
    value = value + 50
    end
  end
end
