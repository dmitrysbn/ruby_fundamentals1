my_name = "Dmitry"

puts "Hey. What's your name?"
user_name = gets.chomp

if my_name.downcase == user_name.downcase
  puts "Oh cool, we have the same name!"
else
  puts "Nice to meet you, #{user_name.capitalize}! My name is #{my_name}."

end
