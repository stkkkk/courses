count = 1

while count <= 10 do
   puts count
   count += 1
   sleep 0.5
end

puts "Finish"

----------------------------------------------------------------------------------------------------------

fruits = [2, 4, 2, 2, 6, 2, 5, 7, 2, 4,]

good_fruits = []
rotten_fruits = 0

for item in fruits do
   if(item != 2)
      rotten_fruits += 1
   else
      good_fruits << item
   end
end

puts fruits.to_s
puts rotten_fruits.to_s
puts good_fruits.to_s