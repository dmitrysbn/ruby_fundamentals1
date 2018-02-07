distance_from_home = 0

workout_status = "on"
# workout_status depends on annoyance level (must be <4, see below) and energy_level (must be >0)

annoyance_level = 0
# values: {0,1,2,3,4}. Once annoyance_level is 4, the program gets annoyed and ends the conversation and workout.
# annoyance_level is reset to 0 once a user inputs a valid answer

energy_level = 10
# min value: 0. If energy_level is 0, we're too tired to continue the workout and take an Uber home.

clif_bar_recency = 0
# values: {0,1}. Whether a Clif bar has been eaten recently. If it has, and the user decides to run, they will puke and end the workout.
# clif_bar_recency is reset to 0 if we choose to walk, instead of run, after eating it

while workout_status == "on"
  if energy_level == 0
    puts "Whew, I don't think I can make it any further. Let's call an Uber."
    workout_status = "off"

  elsif energy_level < 3
    puts "#{(annoyance_level > 0) ? '' : "Let's take some rest and sit for a bit. "}Do you want a Clif bar or a banana?"
    answer = gets.chomp.downcase

    if answer == "banana"
      energy_level = 3
      annoyance_level = 0
      puts "...10 minutes later..."

    elsif answer == "clif bar"
      energy_level = 6
      annoyance_level = 0
      clif_bar_recency = 1
      puts "...10 minutes later..."

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

  elsif energy_level >= 3
    puts "#{(annoyance_level > 0) ? 'So would' : 'Would '}you like to walk or run?"
    answer = gets.chomp.downcase

    if (answer == "run") && (clif_bar_recency == 0)
      distance_from_home += 5
      energy_level -= 3
      puts "Distance from home is #{distance_from_home}km."

    elsif (answer == "run") && (clif_bar_recency == 1)
      puts "You've puked out your Clif bar. Gross! Let's get you home."
      workout_status = "off"

    elsif answer == "walk"
      distance_from_home += 1
      energy_level += 2
      clif_bar_recency = 0
      # clif_bar_recency is reset since we chose to walk
      puts "Distance from home is #{distance_from_home}km."

    elsif answer == "go home"
      workout_status = "off"
      if distance_from_home >= 5
        puts "#{distance_from_home}km is a pretty good workout! See you at home."

      else
        puts "Well, alright. I guess we can try again later this week."
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
