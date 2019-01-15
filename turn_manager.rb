require ('./turn.rb')

class Turn_Manager
	attr_accessor :turn_number, :current_player
	def initialize(players)
		@players = players.dup
		@turn_number = 0
		@current_player = @players[0]
	end

	def new_turn
		@turn_number += 1
		Turn.new
	end

	def correct?(answer, guess)
		answer == guess
	end

	def change_player
		@current_player == @players[0] ? @current_player = @players[1] : @current_player = @players[0]
	end

end
