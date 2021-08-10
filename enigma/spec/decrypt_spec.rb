# require 'spec_helper'
#
# RSpec.describe Decrypt do
#   before :each do
#     @decrypt = Decrypt.new('keder! ohulw!', '02715', '040895')
#   end
#
#   it 'exists & has attributes' do
#     expect(@decrypt).to be_a(Decrypt)
#     expect(@decrypt.message).to eq('keder! ohulw!')
#   end
#
#   it 'returns the converted index postion of each character' do
#     expect(@decrypt.index_chars).to eq([7, -23, -70, -16, 14, "!", -1, -59, -13, 17, -16, -51, "!"])
#   end
#
#   it 'returns translated message' do
#     expect(@decrypt.translate).to eq("hello! world!")
#   end
# end
