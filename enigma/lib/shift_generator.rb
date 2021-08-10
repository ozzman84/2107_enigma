class ShiftGenerator
  attr_reader :keys,
              :date,
              :shift

  def initialize(keys, date)
    @keys  = keys
    @date  = date
    @shift = generate_shift
  end

  def generate_shift
    offset_num = (@date.to_i**2).to_s[-4..-1]
    @shift = {
      A: offset_num[0].to_i + @keys[0..1].to_i,
      B: offset_num[1].to_i + @keys[1..2].to_i,
      C: offset_num[2].to_i + @keys[2..3].to_i,
      D: offset_num[3].to_i + @keys[3..4].to_i
    }
  end
end
