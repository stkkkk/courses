class ResultPrinter

def print_status(game)
   clear_screen
   puts "\nWord: " + get_word_for_print(game.letters, game.good_letters)

   puts "Errors (#{game.errors}): #{game.bad_letters.join(", ")}"

   print_hangman(game.errors)

   if game.errors >= 7
      puts "Ups, you lost!"
   else
      if game.letters.uniq.size == game.good_letters.size
         puts "Congrats, you won!\n\n"
      else
         puts "Attempts left: " + (7-game.errors).to_s
      end
   end
end

def get_word_for_print(letters, good_letters)
   result = ""

   for letter in letters do
      if good_letters.include? letter
         result += letter + " "
      else
         result += "__ "
      end
   end

   return result
end

def clear_screen
   system "clear"
end

def print_hangman(errors)
   case errors
      when 0
         puts "
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
      when 1
         puts "
          _______
          |/
          |     ( )
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
      when 2
         puts "
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
      when 3
         puts "
          _______
          |/
          |     ( )
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        "
      when 4
         puts "
          _______
          |/
          |     ( )
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        "
      when 5
         puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        "

      when 6
         puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
      when 7
         puts "
          _______
          |/     |
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
      end
   end

end