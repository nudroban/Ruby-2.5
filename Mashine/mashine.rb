class Mashine
  def initialize 
    engine
    akselerate
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

  def stopping
    puts "Остановка"
    turn_off  
  end

  private

  def engine
    puts "Запуск двигателя"
  end
  
  def turn_off
    puts "Заглушить двигатель"
  end
end
