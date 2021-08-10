require 'spec_helper'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
    @todays_date = '080921'
    @rand_key = '02715'
  end

  it 'exists & has attributes' do
    expect(@enigma).to be_a(Enigma)
  end

  it 'returns date if date is nil' do
    expect(@enigma.date_gen(nil)).to be_a(String)
  end

  it 'returns date if date is nil' do
    expect(@enigma.keys_gen(nil)).to be_a(String)
  end

  it 'encrypt a message with a key and date' do
    expect(@enigma.encrypt('hello world', '02715', '040895')).to eq({
      encryption: 'keder ohulw',
      key:        '02715',
      date:       '040895'
    })
  end

  it 'decrypt a message with a key and date' do
    expect(@enigma.decrypt('keder ohulw', '02715', '040895')).to eq({
      decryption: 'hello world',
      key:        '02715',
      date:       '040895'
    })
  end

  it "encrypt a message with a key (uses today's date)" do
    # allow(@enigma).to receive(:date).and_return('080821')

    expect(@enigma.encrypt('hello world', '02715', @todays_date)).to eq({
      encryption: 'rgfaybqdany',
      key:        '02715',
      date:       '080921'
    })
  end

  it "decrypt a message with a key (uses today's date)" do
    expect(@enigma.decrypt('nefau qdxly', '02715', @todays_date)).to eq({
      decryption: 'dcllkywonjd',
      key:        '02715',
      date:       '080921'
    })
  end

  it "encrypt a message (generates random key and uses today's date)" do
    # enigma = double('hello world')
    # allow(enigma).to receive(:date).and_return('080921')
    # allow(enigma).to receive(:keys).and_return('02715')

    expect(@enigma.decrypt('hello world', @key, @date)).to eq({
      decryption: 'oqxlvlhoyxp',
      key:        '02715', #Will need to Mock and Stub
      date:       '080921'
    })
  end

  xit 'crack an encryption with a date' do
    expect(@enigma.encrypt("hello world end", "08304", "291018")).to eq({
      encryption: "vjqtbeaweqihssi",
      key:        "08304",
      date:       "291018"
    })
    expect(@enigma.crack("vjqtbeaweqihssi", "291018")).to eq({
      decryption: "hello world end",
      date:       "291018",
      key:        "08304"
    })
  end

  # xit 'crack an encryption using today\'s date' do
  #   expect(@enigma.crack("vjqtbeaweqihssi")).to eq({
  #     decryption: "hello world end",
  #     date:       @todays_date,
  #     key:
  #   })
  # end
end
