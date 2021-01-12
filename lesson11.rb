def declension(number, sobaka, sobaki, sobak)
if (number == nil || !number.is_a?(Numeric))
   number = 0
end
   zalyshok = number % 10
   if (zalyshok == 1)
      return sobaka
   end
   if (zalyshok >= 2 && zalyshok <= 4)
      return sobaki
   end
   if (zalyshok >= 5 || zalyshok == 0)
      return sobak
   end
end

howmuch = ARGV[0].to_i

puts "#{howmuch} " +
   declension(howmuch, "zebra", "zebri", "zebr") +
   " " +
   declension(howmuch, "yde", "ydut'", "ydut'") +
   " do vodopoyu."