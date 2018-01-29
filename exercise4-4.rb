puts "What's your name?"
user_name = gets.chomp

if user_name.length > 10
  puts "Hi, #{user_name.capitalize}."
elsif user_name.length < 10
  puts "Hello, #{user_name.capitalize}."
else
  puts "Hey, #{user_name.capitalize}."

end
