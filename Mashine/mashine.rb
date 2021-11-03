class Mashine

  def initialize
    @step = 0
  end

  def akselerate
    engine
    puts "Набираем скорость"
  end

  def engine_count
    puts "Количество заводов двигателя #{@step}"
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
    @step += 1
    puts "Запуск двигателя"
  end
     
  def turn_off
    puts "Заглушить двигатель"
  end
end
