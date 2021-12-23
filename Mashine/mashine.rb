# frozen_string_literal: true

# top-level documentation comment
class Mashine
  @@engine_summarize = 0
  def initialize(name)
    @step = 0
    @name = name
    @acc = Accum.new
  end

  def starting
    turn_on
    puts 'Тронуться с места'
  end

  def go_ahead
    puts 'Ехать вперед'
    @acc.charging
  end

  def left
    puts 'Поворот влево'
    @acc.charging
  end

  def right
    puts 'Поворот вправо'
    @acc.charging
  end

  def braking
    puts 'Торможение'
    @acc.charging
    stopping
  end

  def stopping
    puts 'Остановка'
    turn_off
  end

  def engine_count
    @step
  end

  def self.summary_engine_count
    @@engine_summarize
  end

  private

  def turn_on
    @acc.engine_enough?
    puts 'Завести двигатель!'
    increment_engine_count
    @acc.discharging
  end

  def turn_off
    puts 'Заглушить двигатель!'
  end

  def increment_engine_count
    @step += 1
    @@engine_summarize += 1
  end
end
