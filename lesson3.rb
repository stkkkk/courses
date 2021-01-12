puts "The coronavirus comes and everyone is quarantined at home. But suddenly you wanted to take a walk
1. Stay at home
2. Go walk around"

choice = gets.chomp

if choice == "2"
   abort "Stay at home!"
elsif choice == "1"
   puts "Ok, check what your cat doing
   1. Taking a nap
   2. I dont have one"

   cat = gets.chomp

   if cat == "1"
      puts "Nice, you can join him!"
   else
      puts "Buy a cat!"
   end
else
   puts "Only 1 or 2"
end
