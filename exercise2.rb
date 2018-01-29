# Problem 1
puts "Problem 1"
puts "A 20% tip of a $55 meal is $" + (55 * 0.2).to_i.to_s + "."
puts ""

# Problem 2
puts "Problem 2"
puts "We will get an error if we simply add an number and a string."
puts "Do I really need another " + 2.to_s + " coffees?"
puts ""

# Problem 3
puts "Problem 3"
puts "Hmm, I wonder what 45628 times 7839 is... it's #{45628 * 7839}!"
puts ""

# Problem 4
puts "30 is greater than 20, so '30 < 20' is false and hence the first bracketed statement is false; 10 is not equal to 11, so '(10 == 11)' is false and so the second statement '!(false)' evaluates to 'true'. Thus one of the two statements in the '||' OR expression is true, and so the entire expression evaluates to 'true'."
puts "Indeed, '(10 < 20 && 30 < 20) || !(10 == 11)' evaluates to #{(10 < 20 && 30 < 20) || !(10 == 11)}."
puts ""
