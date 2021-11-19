# frozen_string_literal: true

class Mashinizer

  def self.mashine_name
    str = ''
    word_length.times { str += letter }
    str.capitalize
  end

  private

  def self.letter
    'abcdefghijklmnopqrstuvwxyz'[rand(25)]
  end

  def self.word_length
    rand(2..4)
  end
end
