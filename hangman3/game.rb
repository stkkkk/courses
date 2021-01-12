class Game

   def initialize(word)
      @letters =get_letters(word)

      @errors = 0

      @good_letters = []
      @bad_letters = []

      @status = 0
   end

   def get_letters(word)

      if (word == nil || word == "")
      abort "Enter your word!"
      end

      return word.split("")
   end

   def ask_next_letter
      puts "\n Enter next letter"

      letter = ""

      while letter == "" do
         letter = STDIN.gets.chomp.downcase
      end

      next_step(letter)
   end

   def next_step(letter)
      if @status == -1 || @status == 1
         return
      end

      if @good_letters.include?(letter) || @bad_letters.include?(letter)
         return
      end

      if letters.include?(letter)
         @good_letters << letter

         if @good_letters.size == @letters.uniq.size
            @status = 1
         end

      else
         @bad_letters << letter
         @errors += 1

            if @errors >= 7
               @status = -1
            end
      end

   end

   def letters
      return @letters
   end

   def good_letters
      return @good_letters
   end

   def bad_letters
      return @bad_letters
   end

   def status
      @status                    # ruby feature
   end

   def errors
      @errors
   end

end