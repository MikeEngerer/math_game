

class Player
	attr_accessor :name, :lives
	def initialize(name)
		@name = name
		@lives = 3
	end

	def decrement_lives
		@lives -= 1
	end

	def alive?
		!(lives == 0)
	end

	def change_player(players)
		players.each do |player|
			player.my_turn = !player.my_turn
		end
	end

end