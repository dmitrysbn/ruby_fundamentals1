distance_from_home = 0

while true
  puts "Would you like to walk or run?"
  answer = gets.chomp

  if answer.downcase == "run"
    distance_from_home += 5
    puts "Distance from home is #{distance_from_home}km."
  elsif answer.downcase == "walk"
    distance_from_home += 1
    puts "Distance from home is #{distance_from_home}km."
  else

  end

end
