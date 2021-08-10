require './lib/shift_generator'

class Cipher
  attr_reader :message,
              :shift,
              :operator

  LETTERS = ("a".."z").to_a << " "

  def initialize(message, keys, date, operator = :+)
    @message  = message.downcase
    @shift    = ShiftGenerator.new(keys, date)
    @operator = operator
  end

  def index_chars
    shift     = @shift.shift.values
    @message.split('').map do |letter|
      if LETTERS.rindex(letter).nil?
        letter
      else
        shift = shift.rotate
        LETTERS.rindex(letter).send(@operator, shift[-1])
      end
    end
  end

  def translate
    index_chars.map do |index|
      index.is_a?(Integer) ? LETTERS[index % 27] : index
    end.join
  end

  # def translate
  #   index_chars.map do |index|
  #     if !index.is_a? Integer
  #       index
  #     else
  #       LETTERS[index % 27]
  #     end
  #   end.join
  # end
end
