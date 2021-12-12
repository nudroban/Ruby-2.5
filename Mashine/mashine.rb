# frozen_string_literal: true

# top-level documentation comment
class Mashine
  @@engine_summarize = 0
  def initialize
    @step = 0
  end

  def starting
    puts 'Тронуться с места'
  end

  def go_ahead
    puts 'Ехать вперед'
  end

  def left
    puts 'Поворот влево'
  end

  def right
    puts 'Поворот вправо'
  end

  def braking
    puts 'Торможение'
  end

  def stopping
    puts 'Остановка'
    turn_off
  end

  def engine_count
    puts "Машину завели :#{@step}"
  end

  def self.summary_engine_count
    puts "Общее количество заводов машин :#{@@engine_summarize}"
  end

  private

  def turn_on
    puts 'Завести двигатель!'
    increment_engine_count
  end

  def turn_off
    puts 'Заглушить двигатель!'
  end

  def increment_engine_count
    @step += 1
    @@engine_summarize += 1
  end
end
