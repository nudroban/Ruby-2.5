# frozen_string_literal: true

# top-level documentation comment
class Mashine
  @@engine_summarize = 0
  def initialize(name)
    @step = 0
    @name = name
    @accum = Accum.new
  end

  def name
    print "#{@name}: "
  end

  def akselerate
    engine
    puts 'Запуск двигателя'
    puts 'Набираем скорость'
  end

  def engine_count
    puts "Количество заводов двигателя #{@step}"
  end

  def summary_engine_count
    puts "Всего машины заводились: #{@@engine_summarize}"
  end

  def go_ahead
    acc_condition
    puts 'Ехать вперед'
    @accum.charging
  end

  def left
    acc_condition
    puts 'Поворот влево'
    @accum.charging
  end

  def right
    acc_condition
    puts 'Поворот вправо'
    @accum.charging
  end

  def braking
    acc_condition
    puts 'Торможение'
    @accum.charging
    stopping
  end

  def stopping
    puts 'Остановка'
    turn_off
  end

  def acc_condition
    @accum.condition
    turn_off if @accum.charging >= 100 && @accum.discharging < 10
  end

  private

  def engine
    puts 'Поворот ключа зажигания'
    increment_engine_count
    @accum.discharging
  end

  def turn_off
    puts 'Заглушить двигатель'
  end

  def increment_engine_count
    @step += 1
    @@engine_summarize += 1
  end
end

class Accum
  def initialize
    @value = 100
  end

  def condition
    print "Состояние аккумулятора #{@value}%; "
  end

  def charging
    @value += 5
  end

  def discharging
    @value -= 10
  end
end
