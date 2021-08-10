require 'date'

module Validatable

  def date_gen(date)
    date.nil? ? Date::today.strftime('%m%d%y') : date
  end

  def keys_gen(keys)
    keys.nil? ? rand(99999).to_s.rjust(5, '0') : keys
  end
end
