require 'spec_helper'

RSpec.describe CodeBreaker do
  before :each do
    @code_breaker = CodeBreaker.new("vjqtbeaweqihssi", "291018")
  end

  it 'exists & has attributes' do
    expect(@code_breaker).to be_a(CodeBreaker)
    expect(@code_breaker.message).to eq("vjqtbeaweqihssi")
  end

  xit 'returns the shift' do
    #shift = {
    # A: 14,
    # B: 86,
    # C: 32,
    # D: 8
  # }
    # current index [7, 18, 18, 8]
    expect(@code_breaker.shift_decoder).to eq([14, 86, 32, 8])
  end

  xit 'returns the key by using the date' do
    expect(@code_breaker.key_decoder).to eq("08304")
  end
end
