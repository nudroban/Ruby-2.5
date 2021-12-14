# frozen_string_literal: true

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
    if condition > 10
      @value -= 10
    else
      puts 'Аккум разряжен!'
    end
  end
end
