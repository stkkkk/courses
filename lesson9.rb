name = ARGV[0]

if name == nil
   name = "Lazy guy"
end

puts "Hello, my dear #{name}! Have a few questions for ya:"

questions = [
   "1",
   "2",
   "3",
   "4",
   "5",
   "6",
   "7",
   "8"
]

results = [
   "12",
   "13",
   "14"
]

yes_answers = 0

for item in questions do
   puts item

   user_input = nil

   while (user_input != "yes" and user_input != "no")
      puts "Only yes or no"
      user_input = STDIN.gets.chomp.downcase #Yes No YeS
   end

   if(user_input == "yes")
      yes_answers += 1
   end
end

   puts "#{name}, your yes answers = #{yes_answers}"

   if (yes_answers >= 7)
      puts results[0]
   elsif (yes_answers >= 4)
      puts results[1]
   else
      puts results[2]
   end
