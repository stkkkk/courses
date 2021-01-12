puts "Choose a hero and get to know his enemy"

hero = STDIN.gets.chomp

heros_antiheros = {
   "Batman" => "Joker",
   "Tom" => "Jerry",
   "Sherlock" => "Moriarty"
}

heros_antiheros["Pudge"] = "Lifestealer"
heros_antiheros.delete("Pudge")

if heros_antiheros.has_key?(hero)
   puts "His enemy is a #{heros_antiheros[hero]}"
else
   puts "Cant find the enemy :("
end

puts "All heros to find : #{heros_antiheros.keys}"