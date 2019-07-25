require 'pry'

class Player
  attr_accessor :name_player1, :name_player2

  def initialize

    puts "Nom du joueur côté x"
    @name_player1=gets.chomp
    puts "Nom du joueur côté o"
    @name_player2=gets.chomp
  end

end
# binding pry 
