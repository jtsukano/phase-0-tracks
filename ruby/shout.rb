# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :)"
#   end
# end

# p Shout.yelling_happily("woooo")
# p Shout.yell_angrily("arrrr")

module Shout
	def shouts(words)
		puts "#{words}!!!"
	end
end


class Commentator
	include Shout
end

class Mom
	include Shout
end

commentator = Commentator.new
commentator.shouts('Goalllllll')
mom = Mom.new
mom.shouts('JERRYYYYYYYY')