require_relative 'enigma'

class Decrypt
  @enigma  = Enigma.new
  file     = File.open('encrypted.txt', "r")
  text     = file.read.chomp
  params   = @enigma.decrypt(text, ARGV[2], ARGV[3])
  new_file = File.open('decrypted.txt', 'w')
  new_file.write(params[:decryption])
  puts "Created #{file} with the key #{params[:key]} and date #{params[:date]}"
end
