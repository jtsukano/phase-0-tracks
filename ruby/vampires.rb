p "How many employee will be processed?"
employee = gets.chomp.to_i

until employee == 0
p "What is your name?"
name = gets.chomp
p "How old are you?"
age = gets.chomp.to_i
p "What year were you born?"
year = gets.chomp.to_i
p "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
p "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
employee = employee -1
end
# wolves_like_sunshine = true
# wolves_like_garlic = true
# vampires_like_sunshine = false
# vampires_like_garlic = false

# wolves_like_garlic && wolves_like_sunshine
# wolves_like_garlic || vampires_like_garlic
# wolves_like_garlic && vampires_like_garlic
# wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
# (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
# vampires_like_garlic
# !vampires_like_garlic
# !(wolves_like_sunshine && wolves_like_garlic

current_year = 2016
actual_age = current_year - year
if actual_age == age
	age = true
else age = false
end
# puts age

if garlic == "yes"
	garlic = true
else garlic = false
end
# puts garlic

if insurance == "yes"
	insurance = true
else insurance = false
end
# puts garlic
# # If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if age && (garlic || insurance)
	puts "Probably not a vampire."
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
elsif (age == false) && ((insurance == false) || (garlic == false))
	puts "Probably a vampire."
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
elsif (age == false) && (garlic == false) && (insurance == false)
	puts "Probably a vampire."
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
elsif name == "Drake Cula"
	puts "Definitely a vampire."
elsif name == "Tu Fang"
	puts "Definitely a vampire."
else puts "Result inconclusive."
end
puts
# Otherwise, print “Results inconclusive.”

# Print the result at the end of the survey.
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."