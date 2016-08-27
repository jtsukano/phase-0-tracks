#Pair assignment 4.3 with Victor Matthews

puts "What's your hamsters name"
name = gets.chomp
puts "Your volume from 1 to 10"
volume1 = gets.chomp.to_i
puts "what is your hamsters color"
color = gets.chomp
puts "is your hamster a good candidate for adoption"
candidate = gets.chomp
if candidate == "yes"
	candidate = "good"
else candidate = "bad"
end
p candidate
puts "what is the age"
age = gets.chomp.to_i
if age == ""
	age = nil
end
p "Your hamester's name is #{name}"
p "Your hamster's volume is #{volume1}"
p "Your hamster's fur color is #{color}"
p "Your hamster is a #{candidate} candidate"
p "Your hamster's age is #{age}"