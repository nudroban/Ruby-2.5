# frozen_string_literal: true

require_relative 'mashine'
class PublicTransport
  def initialize
    @pass = false
  end

  def loading_passengers
    @pass = true
    puts 'Passengers sit!'
  end

  def condition
    @pass
  end

  def uploading_passengers
    @pass = false
  end

  def self.loading_passegers
    # code here
  end
end
