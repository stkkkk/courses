puts "Hello! Its your diary. Whats up?"
puts "Write it down, last line must be  \"end\"."
puts

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do
   line = STDIN.gets.encode("UTF-8").chomp
   all_lines << line
end

time = Time.now

file_name = time.strftime("%d-%m-%Y")

time_string = time.strftime("%H:%M")

separator = "-------------------------------------------"

file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

file.print("\n\r" + time_string + "\n\r")

all_lines.pop

for item in all_lines do
   file.puts(item)
end

file.puts(separator)
file.close

sleep 0.5
puts "..."
sleep 0.5
puts "Saved in #{file_name}.txt"
sleep 0.5
puts "Posted in #{time_string}"
puts
