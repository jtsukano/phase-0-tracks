// function = reverse(input)
// input: a string that I want to reverse
// steps: split the string into individual characters in an array
//   		
// output: reversed string

function reverse(input) {
	return input.split('').reverse().join('');
}

var reverse = (reverse('hello'));
if (1 == 1) {
	console.log(reverse);
}

// var string = "input"
// return string = string.split('')