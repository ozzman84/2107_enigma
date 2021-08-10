require './lib/cipher'
require './lib/shift_generator'
require './lib/validatable'
require 'date'

class Enigma
  include Validatable

  def encrypt(message, keys = nil, date = nil)
    date    = date_gen(date)
    keys    = keys_gen(keys)
    cipher  = Cipher.new(message, keys, date)

    params  = {
      encryption: cipher.translate,
      key:        keys,
      date:       date
    }
  end

  def decrypt(message, keys = nil, date = nil)
    date   = date_gen(date)
    keys   = keys_gen(keys)
    cipher = Cipher.new(message, keys, date, :-)

    params = {
      decryption: cipher.translate,
      key:        keys,
      date:       date
    }
  end

  def crack(message, date = nil)
    date  = date_gen(date)
    crack = CodeBreaker.new(message)

    params = {
     decryption: crack.translate,
     key:        crack.keys,
     date:       date
    }
  end
end
