class Bridge

   def initialize
      puts "Bridge created!"
      @opened = false
   end

   def open
      puts "Bridge was opened, you can drive!"
      @opened = true
   end

   def is_opened?
      return @opened
   end

end