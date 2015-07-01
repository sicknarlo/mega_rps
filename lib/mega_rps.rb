require "mega_rps/version"

module MegaRps

=begin
	Game
		handle game logic/flow
	Player
		Make move
	Human < Player
		Collect input from command line
	Computer < Player
		Generate move randomly
=end

class Game

	def initialize

		@player = Human.new
		@computer = Computer.new

	end

	def play_game

		print_instructions
		

	end

end

end
