# frozen_string_literal: true

# This class name for car!!!
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

# This class for number on car!!!
class Numberizer
  def self.number
    str = ''
    3.times { str += 'abcdefghijklmnopqrstuvwxyz'[rand(25)].capitalize }
    numb = ''
    4.times { numb += rand(0..9).to_s }
    str + numb
  end
end
