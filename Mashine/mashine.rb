class Mashine
  def initialize 
    akselerate
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
      puts "Поворот ключа зажигания"
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
