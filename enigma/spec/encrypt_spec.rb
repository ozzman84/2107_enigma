# require 'spec_helper'
#
# RSpec.describe Encrypt do
#   before :each do
#     @encrypt = Encrypt.new('Hello! WorLd!', '02715', '040895')
#   end
#
#   it 'exists & has attributes' do
#     expect(@encrypt).to be_a(Encrypt)
#     expect(@encrypt.message).to eq('hello! world!')
#   end
#
#   it 'returns the converted index postion of each character' do
#     expect(@encrypt.index_chars).to eq([10, 31, 84, 31, 17, "!", 53, 95, 34, 20, 38, 76, "!"])
#   end
#
#   it 'returns translated message' do
#     expect(@encrypt.translate).to eq('keder! ohulw!')
#   end
# end
