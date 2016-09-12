class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		age += 1
	end

	# def get_mad_at(reindeer)
	# 		reindeer_ranking.instert(reindeer_ranking.length, delete_at(reindeer_ranking.index())
	# end
end

example_ethnicities = ['asian','caucasian','african','hispanic','unknown','mystical']
p ecount = example_ethnicities.length
example_genders = ['agender','female','bigender','male','gender fluid','unkown']
p gcount = example_genders.count

santas = []
10.times do santas << Santa.new(example_genders[rand(gcount)], example_ethnicities[rand(ecount)], rand(140))
end

p santas

# santa = Santa.new
# santa.speak

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# p santas

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p santas