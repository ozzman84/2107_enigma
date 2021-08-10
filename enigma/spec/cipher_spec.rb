require 'spec_helper'

RSpec.describe Cipher do
  before :each do
    @cipher = Cipher.new('Hello! WorLd!', '02715', '040895')
  end

  it 'exists & has attributes' do
    expect(@cipher).to be_a(Cipher)
    expect(@cipher.message).to eq('hello! world!')
    # expect(@enigma.shift).to be_a(ShiftGenerator)
    # expect(@enigma.operator).to be_a(Symbol)
  end

  it 'returns the converted index postion of each character' do
    expect(@cipher.index_chars).to eq([10, 31, 84, 31, 17, "!", 53, 95, 34, 20, 38, 76, "!"])
  end

  it 'returns translated message' do
    expect(@cipher.translate).to eq('keder! ohulw!')
  end
end
