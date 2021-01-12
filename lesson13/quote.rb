current_path = File.dirname(__FILE__)

file_path = current_path + '/data/quotes.txt'

puts "Phrase of the day:"

if File.exist?(file_path)
   f = File.new(file_path)
   lines = f.readlines
   f.close
   puts lines.sample
else
   puts "FILE NOT FOUND!@"
end