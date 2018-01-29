secret_number = 17.0

puts "Please enter a number."
user_number = gets.chomp.to_f

if user_number == secret_number
  puts "You win!"
elsif (user_number - secret_number).abs <= 1
  puts "So close!"
else
  puts "Try again."

end
