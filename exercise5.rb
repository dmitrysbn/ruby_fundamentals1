distance_from_home = 0
workout_status = "on"

# workout_status depends on annoyance level (must be <4, see below) and energy_level (must be >0)
annoyance_level = 0 # initial value
energy_level = 10 # initial value

while workout_status == "on"
  if energy_level == 0
    puts "Whew, I don't think I can make it any further. I'm calling an Uber. See ya."
    workout_status = "off"

  elsif energy_level < 3
    puts "Let's take some rest and walk for a bit."
    puts "...10 minutes later..."
    distance_from_home += 1
    energy_level = 3

  elsif energy_level >= 3
    puts "Would you like to walk or run?"
    answer = gets.chomp

    if answer.downcase == "run"
      distance_from_home += 5
      energy_level -= 3
      puts "Distance from home is #{distance_from_home}km."

    elsif answer.downcase == "walk"
      distance_from_home += 1
      energy_level += 2
      puts "Distance from home is #{distance_from_home}km."

    elsif answer.downcase == "go home"
      workout_status = "off"
      if distance_from_home >= 5
        puts "#{distance_from_home}km is a pretty good workout! See you at home."

      else
        puts "Well, alright. I guess we can try again tomorrow."
      end

  # Case of invalid input -- annoyance_level keeps rising with each invalid input.
  # Once it reaches 4, the program decides to end the conversation.
    else
      annoyance_level += 1
      if annoyance_level == 1
        puts "Sorry, I didn't hear you properly."
      elsif annoyance_level == 2
        puts "Umm, ok."
      elsif annoyance_level == 3
        puts "What are you even saying?"
      elsif annoyance_level == 4
        puts "Whatever man, I'm going home. See ya."
        workout_status = "off"
      end
    end
  end
end
