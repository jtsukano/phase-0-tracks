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
