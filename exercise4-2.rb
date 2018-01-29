puts "Hey there. How old are ya?"
age = gets.chomp.to_i

if age == 26
  puts "Wow, we're the same age."
elsif (age - 26).abs == 1
  puts "Oh hey, we're only a year apart."
elsif age > 105
  puts "Hmm, yeah, I'm not sure I believe you."
else
  puts "Cool. We're #{(age - 26).abs} years apart."
end
