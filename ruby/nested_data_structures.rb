restaurant = {
	kitchen: {
		people: [
			'chef',
			'dish washer',
			'wait staff',
			'bus boy'
		],
		equipment: [
			'stove',
			'refridgerator',
			'freezer',
			'oven',
			'sink'
		]
	},
	dining_hall: {
		people: [
			'customers',
			'wait staff',
			'bus boy',
			'host'
		],
		equpment: [
			'tables',
			'chairs',
			'silverware',
			'cups',
			'plates'
		],
		tables: {
			total_seats: 80,
			available_seats: 13
		}
	},
	bar: {
		people: [
			'customers',
			'bartender'
		],
		equipment: [
			'counter',
			'bar stool',
			'cocktail glass',
			'mixer'
		],
		drinks: {
			draft_beer: '$4',
			well_drink: '$4',
			specialty_cocktail: '$12'
		}
	}
}

p restaurant[:bar][:drinks][:draft_beer]
p restaurant[:bar][:equipment][2]
