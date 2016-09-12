# game class

class WordGame
	attr_reader :is_over, :word_to_guess, :word_arr
	attr_accessor :word, :guess

	def initialize
		puts "Welcome to the Word Guessing Game!"
		@word = "Awaiting new word."
		@guess_count = 0
		@is_over = false
	end

	def start_game
		puts "User 1, enter the word to guess."
		@word = gets.chomp
		@word_arr = @word.split('')
		puts "User 2, you have #{@word.length} tries to guess the correct word"
	end

	def starting_display
		@word_to_guess = "_" * @word.length
		puts @word_to_guess
	end

	def input
		puts "User 2, enter a letter or word to guess."
		@guess = gets.chomp
		@word_arr.each do {|i| @word_arr(i) = @guess}
	end

	# def check_word
	# 	@guess_count += 1
	# 	if @word == word_status || @guess
	# 		puts "Congrats! You got the correct word!"
	# 		@is_over = true
	# 	elsif @word_arr.include?(@guess) == true
	# 		@word_arr.index(@guess)
	# 		word_status = @word_to_guess
	# 		word_status = 
	# 	else
	# 		false
	# 	end
	# end



	# def updated_display
	# 	word = @word
	# 	word = word.split('')
	# end
end

# user interface


# game = WordGame.new
# game.start_game
# puts "The word to guess is:"
# game.starting_display

# while !game.is_over
# 	game.input
# 	if !game.guess