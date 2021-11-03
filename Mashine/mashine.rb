class Mashine

  def initialize
    akselerate
  end

  def akselerate
    engine
    puts "Набираем скорость"
  end

  def go_ahead
    puts "Ехать вперед"
  end

  def left
    puts "Поворот влево"
    braking  
  end

  def right
    puts "Поворот вправо"
    braking  
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
