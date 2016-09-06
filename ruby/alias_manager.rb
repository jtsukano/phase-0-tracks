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

puts "Please enter the name to change"
agent = gets.chomp


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
end

# Prompt user to enter another name