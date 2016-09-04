# Prompt user to enter info.
p "Please enter the client's details."

# List out client name, age, number of children, decor theme, etc.
# Allow user to enter in the data.
p "Name:"
name = gets.chomp
p "Age:"
age = gets.chomp
p "Number of children:"
children = gets.chomp
p "Decor theme:"
decor = gets.chomp
p "Favorite color:"
color = gets.chomp

# Convert the user input into data types.
client_info = {
	name: name,
	age: age,
	children: children,
	decor: decor,
	color: color
}
# Wait for all the information to be entered.
# Display the information that was entered.
puts client_info

# Allow the user to fix a key.
# Give them the option of either entering the key they want to change or none to proceed.
puts "If you want to change an information, type in the category you want to change. If no change, enter 'none'."
change = gets.chomp

if change == "none"
	puts "Great! You're all set!"
# If the user entered a key, allow them to enter the new value.	
elsif change =="name"
	puts "Please enter the new info."
	client_info[:name] = gets.chomp
elsif change == "age"
	puts "Please enter the new info."
	client_info[:age] = gets.chomp
elsif change == "children"
	puts "Please enter the new info."
	client_info[:children] = gets.chomp
elsif change == "decor"
	puts "Please enter the new info."
	client_info[:decor] = gets.chomp
elsif change == "color"
	puts "Please enter the new info."
	client_info[:color] = gets.chomp
end

# Print the latest hash.
puts "Here is your final information."
puts client_info