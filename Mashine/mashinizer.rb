# frozen_string_literal: true

class Mashinizer
  def initialize; end

  def mashine_name
    word
  end

  private

  def letters
    # (rand(10..35)).to_s(36)
    @letter = ('a'..'z').to_a[rand(26)]
    print @letter
  end

  def word_length
    rand(2..4)
  end

  def word
    word_length.times { letters }
  end
  n = Mashinizer.new
  n.mashine_name
end
