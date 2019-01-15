require ('./players.rb')
require ('./turn_manager.rb')

class Game
	def initialize

		@players = [
			Player.new("Player 1"),
			Player.new("Player 2")
		]

		@turn_manager = Turn_Manager.new(@players)
	end

	def play
		while (!game_over?) do
			puts "\n"
			turn = @turn_manager.new_turn
			puts "Turn #{@turn_manager.turn_number}"
			puts "#{@turn_manager.current_player.name}'s turn:"
			question = turn.new_question
			answer = turn.set_answer(question)
			puts "What is #{question[0]} + #{question[1]}?"
			guess = gets.chomp
			@turn_manager.correct?(answer, guess.to_i) ? (puts "Correct!") : (puts "Wrong answer. you now have #{@turn_manager.current_player.lives - 1} lives"; @turn_manager.current_player.decrement_lives)
			@turn_manager.change_player
		end
	end

	def game_over?
		alive_players.count == 1
	end

	def alive_players
		@players.select {|player| player.alive?}
	end

	def print_summary
		puts ""
		puts "Game Over"
		puts "#{alive_players[0].name} wins!"
	end







end