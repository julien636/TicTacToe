
class Board
  attr_accessor :grid

  def initialize
    @grid=[]

  end

  def print 
    puts

    puts "   1   2   3"
  
    puts "A  #{grid[0][0]} | #{grid[0][1]} | #{grid[0][2]} " 
  
    puts "  ---|---|---"
  
    puts "B  #{grid[1][0]} | #{grid[1][1]} | #{grid[1][2]} "
  
    puts "  ---|---|---"
  
    puts "C  #{grid[2][0]} | #{grid[2][1]} | #{grid[2][2]} "
  
    puts

  end
end
