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

		while play_again?
			@player.move
			@computer.move
			print_result
			play_again?
		end

	end


	def print_instructions

	p "Let's play MEGA Rock, Paper, Scissors!"
	p "Enter (r)ock, (p)aper, or (s)cissors to make your move >>"

	end



	def print_result

		if @player.move == @computer.move
			puts "Draw"
		elsif @player.move == 's' && @computer.move == 'r' || 
					@player.move == 'p' && @computer.move == 's' ||
					@player.move == 'r' && @computer.move == 'p'

			puts "Computer Wins"

		else

      puts "You Win"

		end
		
	end

  def play_again?

    puts "Would you like to play again? Y/N"

    if gets.chomp[0].downcase == 'y'
      true
    else 
      false
    end
  end

end

class Human

  def move
    move = gets.chomp[0].downcase
    move
  end


end

class Computer

  def move

    move = %w[r p s].sample


  end

end












end
