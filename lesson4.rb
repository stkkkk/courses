#puts "Downloading..."
#sleep 5
#puts "VIRUS DOWNLOADED"

cats = ["Marsi", "Borsch", "Kasia"]
puts cats.to_s

cats << "Masiania"
puts cats.to_s

cats.push("Kup", "Griv")
puts cats.to_s

puts cats[2]

cats.delete("Griv")
puts cats.to_s

cats.delete_at(1)
puts cats.to_s