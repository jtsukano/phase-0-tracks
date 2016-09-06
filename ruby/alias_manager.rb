# Release0

# Define vowels and consonants
# Enter the first and last name into an array.
# Swap the order of the first and last name
# Uncapitalize all letters.
# Split the names into separate letters.
# Change the vowels to the next vowel witihin "aeiou"
# Change the remaining consonants to the next consonant between a-z.
# Combine the letters together

alpha = "abcdefghijklmnopqrstuvwxyz".split('')
vowels = ["a", "e", "i", "o", "u"]
consonants = alpha - vowels
agent = "Felicia Torres"
agent = agent.downcase.reverse
agent = agent.split('')
agent.class
agent.map! do |char|
	if vowels.include?(char)
		vowels.rotate(1)[vowels.index(char)]
	elsif char == " "
		char
	else
		consonants.rotate(1)[consonants.index(char)]
	end
end
agent
agent = agent.join('')
new_agent = agent.split.map(&:capitalize).join(' ')

# Release1
# Add UI. Change agent value to gets.chomp
# Create loop until user enters quit.
def codename_maker
alpha = "abcdefghijklmnopqrstuvwxyz".split('')
vowels = ["a", "e", "i", "o", "u"]
consonants = alpha - vowels
old_name = []
new_name = []

x = true
until x == false
puts "Please enter the name to change or enter quit"
agent = gets.chomp

if agent.downcase == "quit"
	x = false
	"good luck agent"
else
	new_agent = agent.downcase.reverse
	new_agent = agent.split('')
	new_agent.class
	new_agent.map! do |char|
		if vowels.include?(char)
			vowels.rotate(1)[vowels.index(char)]
		elsif char == " "
			char
		else
			consonants.rotate(1)[consonants.index(char)]
		end
	end
	new_agent
	new_agent = new_agent.join('')
	new_agent = new_agent.split.map(&:capitalize).join(' ')
	old_name.push(agent)
	new_name.push(new_agent)
end
end

codename_maker
.each {|names| puts "#{agent} is now #{new_agent}."}


# push to hash where key is entered name and data is new name
