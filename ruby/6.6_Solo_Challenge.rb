# game class

class WordGame
	attr_reader :is_over, :word_arr, :word_length
	attr_accessor :word, :guess, :guess_count, :correct_guess

	def initialize
		puts "Welcome to the Word Guessing Game!"
		@word = "Awaiting new word."
		@guess_count = 0
		@is_over = false
		@correct_guess = []
	end

	def start_game
		puts "User 1, enter the word to guess."
		@word = gets.chomp.downcase.strip
		@word_length = @word.length.to_i
		@word_arr = @word.split('')
		puts "User 2, you have #{@word.length} tries to guess the correct word"
	end

	def starting_display
		@word_arr.each do |x|
			print '_ '
		end
		puts "\n\n"
	end

	def input
		puts "User 2, enter a letter or word to guess."
		@guess = gets.chomp.downcase.strip
	end

	# def check_word
	# 	@guess_count += 1
	# 	if @word == @guess || @correct_guess.length.to_i == @word_length
	# 		puts "Congrats! You got the correct word!"
	# 		@is_over = true
	# 	elsif @word_arr.include?(@guess) == true
	# 		@word_arr.each_index do |x|
	# 			if @word_arr[x] == @guess
	# 				puts "Awesome! You got one or more letters correct!"
	# 				puts "Here is how your word looks now."
	# 				print "#{@guess}"
	# 				@correct_guess.push(@guess)
	# 			else print "_ "
	# 			end
	# 		end
	# 	else 
	# 		# @word_arr.include?(@guess) != false
	# 		puts "Wrong!"
	# 		puts "you have #{(@word_length - @guess_count)} guesses left."
	# 	end
	# end
end

#  user interface


game = WordGame.new
game.start_game
puts "The word to guess is:"
game.starting_display
puts "Let the guessing begin!"

guess_count = game.word_length
until guess_count == 0 || game.is_over == true
	game.input
	guess_count -= 1

	if game.correct_guess.include?(game.guess) == true
		guess_count -= 0
	end

	if game.word == game.guess || game.correct_guess.length.to_i == game.word_length
		puts "Congrats! You got the correct word!"
		game.is_over = true
	elsif game.word_arr.include?(game.guess) == true
		game.word_arr.each_index do |x|
			if game.word_arr[x] == game.guess
				print "#{game.guess}"
				game.correct_guess.push(game.guess)
			else print "_ "
			end
		end
		puts "\n\n"
	else 
		# @word_arr.include?(@guess) != false
		puts "Wrong!"
		puts "Remaining guess count: #{(game.word_length - game.guess_count)}."
	end
end

if guess_count == game.word_length
	puts "YOU LOSE! Muahahahaha."
end