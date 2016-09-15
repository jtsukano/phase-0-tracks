var colors = ['blue', 'red', 'white', 'green'];
var names = ['ed', 'tim', 'sebastian', 'beth'];

colors.push('orange');
names.push('chip');

// Release 2: Write a function to create cars
function Car(color, doors, type) {
	console.log(this, "car created");

	this.color = color;
	this.doors = doors;
	this.type = type;

	this.engine_on = function() {
		console.log("*VROOM VROOM*");
	};

	console.log("Car initialization complete.");
}

var newCar = new Car("black", 3, "coupe");
console.log(newCar);
newCar.engine_on();

var newCar = new Car("gray", 4, "sedan");
console.log(newCar);
newCar.engine_on();

var newCar = new Car("purple", 4, "lowrider");
console.log(newCar);
newCar.engine_on();

// Release 3: Loop through keys and variable in object
for (var key in newCar) {
	if (newCar.engine_on(key)) {
		console.log(key + " -> " + newCar[key]);
	}
}