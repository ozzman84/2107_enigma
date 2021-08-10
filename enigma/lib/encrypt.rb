require_relative 'enigma'

class Encrypt
  @enigma  = Enigma.new
  file     = File.open('message.txt', "r")
  text     = file.read.chomp
  params   = @enigma.encrypt(text)
  new_file = File.open('encrypted.txt', 'w')
  new_file.write(params[:encryption])
  puts "Created #{file} with the key #{params[:key]} and date #{params[:date]}"
end
