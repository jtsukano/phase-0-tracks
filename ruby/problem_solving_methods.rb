# Releaes 0
def search_array(array, number)
	index = 0
	array.each do |current|
		if (current == number)
			return index
		end
		index += 1
	end
	return nil
end 

def search_array2(array,number)
	for n in 0..array.length-1
		if (array[n] == number)
			return n
		end
	end
	return nil
end

arr = [21,32,43,14,55,76]
p search_array2(arr,55)
p search_array(arr,14)

# Release 1
def fibonacci(n)
  sequence = [0,1]
  (1..n-2).each {|x| sequence.push(sequence[x] + sequence[x-1])}
  sequence
end

# Release 2

# Compare the integers next to each other. If the first is greater than the second, switch them. 
# Continue to do this through each pair of integers within the array until reaching the last two.
# Repeat this step until there are no changes occuring. 

def bubble_sort(array)
  n = array.length
  loop do
    switched = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        switched = true
      end
    end

    break if not switched
  end

  array
end