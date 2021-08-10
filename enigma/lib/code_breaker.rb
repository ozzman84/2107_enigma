class CodeBreaker < Enigma
  attr_reader :message,
              :shift,
              :key

  LETTERS = ("a".."z").to_a << " "

  def initialize(message, date)
    @message = message.downcase
    @shift   = shift_decoder
    @key     = key
  end

  def key_generator
    

  num = []
  shift = {
    A: 14,
    B: 86,
    C: 32,
    D: 8
  }
    message_index = [' ', 'e', 'n', 'd'].map do |char|
      LETTERS.index(char).to_i
    end
    encoded_index = @message[-4..-1].split('').map do |letter|
      LETTERS.index(letter).to_i
    end
    require "pry"; binding.pry
    message_index.zip(encoded_index) { |m, e| num << m - e }
    num
  end
end
