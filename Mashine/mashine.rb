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
    puts "Запуск двигателя"
    puts "Набираем скорость"
  end

  def engine_count
    puts "Количество заводов двигателя #{@step}"
  end

  def summary_engine_count
    puts "Всего машины заводились: #{@@engine_summarize}"
  end

  def engine_condition

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
    @on
  end
     
  def turn_off
    puts "Заглушить двигатель"
    @off
  end

  def increment_engine_count
    @step += 1
    @@engine_summarize += 1
  end

end
