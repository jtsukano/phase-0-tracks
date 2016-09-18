// Release 0
// to write a function that takes an array of words or phrases and retuns the longest word or phrase in the array.
// set a VARIABLE that is equal to a STRING of words/phrases separated by commas.
	// SORT the strings in the order of the length.
// RETURN the last string in the array


var array = ["long phrase","longest phrase","longer phrase"];

function longest_phrase(some_array) {
	array.sort(function(a, b){return a.length-b.length});
	longest_word = array[array.length - 1];
	console.log(longest_word)
}

longest_phrase(array)

// Release 1
// to write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// input: Object1 and Object2
// Code:
	// assign elements into object 1
	// assign elements into object 2
	// for EACH key in object1, check if it equals a key in object 2.
	// IF object1 key = object2 key, return true
	// ELSE return false
// output: boolean value of true or false


object1 = {name: "Steven", age: 54}
object2 = {name: "Tamir", age: 54}

function name(first_object, second_object){
	for (var key in object1) {
		
	}
}

for (var key in newCar) {
	if (newCar.engine_on(key)) {
		console.log(key + " -> " + newCar[key]);
	}
}