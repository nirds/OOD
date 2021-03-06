require './features/step_definitions/tic-tac-toe.rb'
puts "Please enter your name: "
name = gets.chomp
@game = TicTacToe.new
@game.player = name
puts @game.welcome_player

until @game.over?
	case @game.current_player
	when "Computer"
		@game.computer_move
	when @game.player
		@game.indicate_palyer_turn
		@game.player_move
	end
	puts @game.current_state
	@game.determine_winner
end

puts "You Won!" if @game.player_won?
puts "I Won!" if @game.computer_won?
puts "DRAW!" if @game.draw?
