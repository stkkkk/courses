class ResultPrinter

def initialize
   @status_image = []

   current_path = File.dirname(__FILE__)

   counter = 0

   while counter <=7 do
      file_name = current_path + "/image/#{counter}.txt"

      if File.exist?(file_name)
      f = File.new(file_name)
      @status_image << f.read
      f.close
      else
         @status_image << "\n[ Image Not Found]\n"
      end

      counter += 1
   end

end


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
   puts @status_image[errors]
end

end