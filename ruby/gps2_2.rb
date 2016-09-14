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
# input: a string for the quantity the user wants to update
# steps: 
# output:

# Method to print a list and make it look pretty
# input:
# steps:
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
		puts "Enter quantity for #{items[x]}."
		quantity = gets.chomp
		# assign each quantity to the item and add to list
		$list[:"#{items[x]}"] = quantity
	end
	puts "Here is your shopping list."
	puts $list
end

def add_to_list(item)
	if item.split.length > 1
		item = item.split
		# p item[1]
		$list[:"#{item[0]}"] = item[1]
	else
		$list[:"#{item}"]
	end
end

shopping_list("milo cereal milk")
p $list
add_to_list("pizza 1")
p $list