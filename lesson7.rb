names = []
user_input = nil

while user_input != "" do
   user_input = gets.chomp
   names << user_input
end

for item in names do
   puts "Hello, " + item + "!"
   sleep 1

      if (item == "Dog")
         puts "Not a name!"
         sleep 1
         break
      end
end
