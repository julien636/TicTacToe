require 'pry'
require_relative "player"

class Game
  attr_accessor :turn, :grid

  def initialize
    @turn = "x"
    @grid=[[" "," "," "],[" "," "," "],[" "," "," "]]

  end

  def check_row
    grid.each { |row| return true if all_equal?(row) }

    false
  end

  def all_equal?(row)
    return false if row[0] == " " || row[1] == " " || row[2] == " "
    row.each_cons(2).all?{|x,y| x==y}
  end
  

  def check_column
    column=grid.transpose
    column.each { |row| return true if all_equal?(row) }

    false
  end

  def check_diagonal
    diagonal=[[grid[0][0],grid[1][1],grid[2][2]],[grid[2][0],grid[1][1],grid[0][2]]]
    diagonal.each { |row| return true if all_equal?(row)}

    false
  end

  def check_win
    check_row || check_column || check_diagonal
  end

  def insert_play
    i=0
    while i==0
      j=0
      while j==0
        puts "Sur quelle ligne veux-tu jouer (A B C)(1 2 3)?"
        array=gets.chomp.downcase.split("")
        case array[0]
        when "a"
          x=0
          j=1
        when "b"
          x=1
          j=1
        when "c"
          x=2
          j=1
        else
          puts "Mauvaise ligne recommence"
        end

        case array[1].to_i
        when 1..3
          y=array[1].to_i-1
          j=1
        else
          puts "Mauvaise colonne recommence"
        end
      end
      if grid[x][y] == " "
        grid[x][y]=turn
        i=1
        return [x,y]
      else
       puts"Case déjà rempli essaye encore!"
      end
    end
  end


  def change_turn
    turn == "x" ? @turn="o" : @turn="x"
  end


end

# binding pry