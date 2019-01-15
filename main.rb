require ('./game.rb')
# require ('./players.rb')
# require ('./turn_manager.rb')
# require ('./turn.rb')

game = Game.new

puts "Welcome to TwO-O-Player Math Game! \n"

game.play

puts game.print_summary

