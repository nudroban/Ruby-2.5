class Mashine

  @@engine_summarize = 0

  def initialize(name = "no_name")
    @step = 0
    @value = 100
  end

  def warming_up
    engine
    turn_off
    engine_count
  end

  def akselerate
    engine
    puts "Запуск двигателя"
    puts "Набираем скорость"
  end

  def engine_count
    puts "Количество заводов двигателя #{@step}"
    puts "Состояние аккумулятора #{@value}%"
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
    engine_count
  end

  private

  def engine
    puts "Поворот ключа зажигания"
    increment_engine_count
    accum_condition
  end
     
  def turn_off
    puts "Заглушить двигатель"
  end

  def increment_engine_count
    @step += 1
    @@engine_summarize += 1
  end

  def accum_condition
    if @value > 10
      @value -= 10
    else
      puts "Аккумулятор разряжен"
      puts "Состояние аккумулятора #{@value}%"
      exit
    end
  end

end
