# game class

class WordGame
	attr_reader :is_over, :word_to_guess, :word_arr
	attr_accessor :word, :guess, :guess_count

	def initialize
		puts "Welcome to the Word Guessing Game!"
		@word = "Awaiting new word."
		@guess_count = 0
		@is_over = false
	end

	def start_game
		puts "User 1, enter the word to guess."
		@word = gets.chomp.downcase.strip
		@word_arr = @word.split('')
		puts "User 2, you have #{@word.length} tries to guess the correct word"
	end

	def starting_display
		puts "Guess this word:"
		@word_arr.each do |x|
			print '_ '
		end
	end

	def input
		puts "User 2, enter a letter or word to guess."
		@guess = gets.chomp.downcase.strip
	end

	def check_word
		@guess_count += 1
		if @word == word_status || @word == @guess || @guess_count == @word.length.to_i
			puts "Congrats! You got the correct word!"
			@is_over = true
		elsif @word_arr.include?(@guess) == true
			@word_arr.each do |x|
				if @word_arr[x] == @guess
					print @guess
				else print "_ "
				end
		end
		if @word_arr.include?(@guess) != false
			puts "Wrong!"
		end
	end
end

#  user interface


game = WordGame.new
game.start_game
puts "The word to guess is:"
game.starting_display


until game.guess_count == game.word_to_guess.length
	game.input
	game.check_word
end