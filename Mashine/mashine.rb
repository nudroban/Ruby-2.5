class Mashine
  @@engine_summarize = 0

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
  end

  def summary_engine_count
    puts "Всего машины заводились: #{@@engine_summarize}"
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
    increment_engine_count
  end
     
  def turn_off
    puts "Заглушить двигатель"
  end

  def increment_engine_count
    @step += 1
    @@engine_summarize += 1    
  end
end
