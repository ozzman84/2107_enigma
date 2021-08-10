require 'spec_helper'

RSpec.describe ShiftGenerator do
  before :each do
    @shift_generator  = ShiftGenerator.new('02715', '040895')
    @shift_generator2 = ShiftGenerator.new("08304", "291018")
  end

  it 'exists & has attributes' do
    expect(@shift_generator).to be_a(ShiftGenerator)
    expect(@shift_generator.keys).to eq('02715')
    expect(@shift_generator.date).to eq('040895')
    expect(@shift_generator.shift).to eq({
      A: 3,
      B: 27,
      C: 73,
      D: 20
    })
  end

  it 'can return shift hash' do
    expect(@shift_generator.generate_shift).to eq({
      A: 3,
      B: 27,
      C: 73,
      D: 20
    })
    expect(@shift_generator2.generate_shift).to eq({
      A: 14,
      B: 86,
      C: 32,
      D: 8
    })
  end
end
