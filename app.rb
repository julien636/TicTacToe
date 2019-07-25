require 'pry'

require_relative "lib/app/game"
require_relative "lib/app/player"
require_relative "lib/app/board"


player=Player.new
game=Game.new
board=Board.new

puts "Voulez-vous faire une partie? (y/n)"
user_input=gets.chomp
board.grid=game.grid
board.print
while user_input=="y"
    if game.turn == "x"
      puts "#{player.name_player1} à toi de jouer"
    else
      puts "#{player.name_player2} à toi de jouer"
    end
    game.insert_play
    board.grid=game.grid
    board.print
    if game.check_win==true 
      if game.turn=="x" then puts "#{player.name_player1} a gagné" else puts "#{player.name_player2} a gagné" end
      puts "Voulez-vous refaire une partie? (y/n)"
      user_input=gets.chomp
        if user_input=="y"
          game=Game.new
          board=Board.new
        end
    elsif game.check_draw==true
      puts 'MATCH NUL - Try again'
      puts "Voulez-vous refaire une partie? (y/n)"
      user_input=gets.chomp
        if user_input=="y"
          game=Game.new
          board=Board.new
        end
    else
      game.change_turn
    end
end
