$sum = 0
class Mashine

  def initialize
    @step = 0
  end
  def warming_up
    engine
    turn_off
  end
  def akselerate
    engine
      puts "Запуск двигателя"
      puts "Набираем скорость"
  end

  def engine_count
    puts "Количество заводов двигателя #{@step}"
    $sum += @step
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
    stopping
  end

  def stopping
    puts "Остановка"
    turn_off
  end

  private

  def engine
    puts "Поворот ключа зажигания"
    @step += 1
  end
     
  def turn_off
    puts "Заглушить двигатель"
  end
end
