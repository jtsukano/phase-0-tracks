# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # SPLIT the different items within the string into individual items.
  # ADD each item into an array
  # for EACH item within the array, allow user to enter a quantity with it. 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash with items as keys and the quantity. 

# Method to add an item to a list
# input: item name and optional quantity
# steps:
	# get INPUT for item from user
	# get INPUT for item's quantity from user
	# ADD item into the shopping list.
# output: Hash of list with updated items and quantities.

# Method to remove an item from the list
# input: a string of the item that wants to be removed
# steps:
	# get INPUT from user for item they want to delete
	# DELETE the item from the hash
# output: Updated hash with the item deleted.

# Method to update the quantity of an item
# input: a string for the item
# steps: 
	# get INPUT for new quantity from user
	# ADD inputed string and new quantity to the list hash
# output:

# Method to print a list and make it look pretty
# input: n/a
# steps: 
	# ADD strings with meessages to help track changes made. 
# output:
def shopping_list(items)
	# separate the items into an array
	items = items.split
	puts "Here are the items you entered."
	puts items	
	# create the list to add items into.
	$list = Hash.new
	# enter quantity of each item.
	items.each_index do |x|
		puts "Enter quantity with no spaces for #{items[x]}."
		quantity = gets.chomp
		# assign each quantity to the item and add to list
		$list[:"#{items[x]}"] = quantity
	end
	puts "Here is your shopping list."
	puts $list
end

def add_to_list(item)
	puts "How many #{item} will you add?"
	quantity = gets.chomp
	$list[:"#{item}"] = quantity
	puts "You added #{item} to your list!"
	puts "Here is your updated shopping list:"
	p $list
end

def delete_from_list(item)
	$list.delete(:"#{item}")
	puts "You removed #{item} from the list."
	puts "Here is your updated shopping list:"
	p $list
end

def update_quantity(change)
	puts "What do you want to change the quantity for #{change} to?"
	quantity = gets.chomp
	$list[:"#{change}"] = quantity
	puts "You changed the quantity of #{change} to #{quantity}."
	puts "Here is your updated shopping list:"
	p $list
end

shopping_list("")

add_to_list("Lemonade")
add_to_list("Tomatoes")
add_to_list("Onions")
add_to_list("Ice Cream")

delete_from_list("Lemonade")

update_quantity("Ice Cream")


# What did you learn about pseudocode from working on this challenge?
	# Working in this challenge helped me understand how pseudocoding allows to build the skeleton of the code you are trying to build. It definitely makes it easier to code after seeing what you need to do rather than taking time to code and lose track in the process. 
# What are the tradeoffs of using arrays and hashes for this challenge?
	# Arrays can be used to add a set of information into another list. Hashes allow you to set a value to the elements which allows you to see them separately rather than all at once.
# What does a method return?
	# A method returns the output of whatever code you had it run. 
# What kind of things can you pass into methods as arguments?
	# you can pass through any variable that can be called upon and used within other codes. 
# How can you pass information between methods?
	# you can pass information between methods by adding '$' to the values you want to use.
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# Using values within methods and passing it along to other methods or outside code in general is solidified. The use of hashes and arrays is a bit confusing still since I had to work on this by myself. The other option I had when doing this assignment was to just separate the itemm and it's quantity in an array, then place them within hashes where it linked to a key such as :item1.
