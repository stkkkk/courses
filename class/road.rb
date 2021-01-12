require './bridge.rb'

puts "Lets start!"

sleep 1

puts "River ahead!!!"

sleep 1

bridge = Bridge.new

sleep 1

if ! bridge.is_opened?
   bridge.open
end

sleep 1

puts "MOVE!"

puts bridge.is_opened?.to_s