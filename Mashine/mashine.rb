# frozen_string_literal: true

# top-level documentation comment
class Mashine
  @@engine_summarize = 0
  def initialize(name)
    @step = 0
    @name = name
    @accum = Accum.new
    @number = Numberizer.number
  end

  def name
    "#{@name}"
  end

  def number
    @number.to_s
  end

  def akselerate
    engine
    puts 'Запуск двигателя'
    puts 'Набираем скорость'
  end

  def accum
    @accum.condition
  end

  def engine_count
    @step.to_s
  end

  def self.summary_engine_count
    @@engine_summarize.to_s
  end

  def go_ahead
    accum
    puts 'Ехать вперед'
    @accum.charging
  end

  def left
    accum
    puts 'Поворот влево'
    @accum.charging
  end

  def right
    accum
    puts 'Поворот вправо'
    @accum.charging
  end

  def braking
    accum
    puts 'Торможение'
    @accum.charging
    stopping
  end

  def stopping
    accum
    puts 'Остановка'
    turn_off
  end

  private

  def engine
    @accum.engine_enough?
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

  def engine_enough?
    condition > 10 ? true : false
  end

  def condition
    @value
  end

  def charging
    @value += 5 if condition < 100
  end

  def discharging
    @value -= 10
  end
end
