require "pony"
require "io/console"

my_mail = "rubysendmail2020@gmail.com"

puts "Enter your email password #{my_mail} to send a message:"
password = STDIN.noecho(&:gets).chomp

puts "Letter addressee:"
send_to = STDIN.gets.chomp

puts "Letter text:"
body = STDIN.gets.chomp

Pony.mail({
  :subject => "Hello!",
  :body => body,
  :to => send_to,
  :from => my_mail,

   :via => :smtp,
   :via_options => {
    :address => 'smtp.gmail.com',
    :port => '465',
    :tls => true,
    :user_name => my_mail,
    :password => password,
    :authentication => :plain
  }
})

puts "The letter was sent successfully!"