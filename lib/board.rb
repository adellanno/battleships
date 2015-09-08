require_relative 'ship'

class Board

  attr_accessor :board, :hits_array, :miss_array

  def initialize
    @board = []  #ships will (possibly) eventually go in here, don't worry about it for now
    @hits_array = []
    @miss_array = []
  end

  def place(ship)
    if @board.include?(ship)
      fail 'That place is taken'
    else
      @board << ship
    end
  end

  def hit(coords)
    if board.empty? 
    fail "You lose!" 
  elsif board.include?(coords)
      board.delete_if {|x| x == coords }
      hits_array << coords
      return "Hit!" 
    else
      miss_array << coords
      return "Miss"
    end
          # need a method in here that checks if array is empty or not to see if player has won game
  end




end


# place ship on board, mehos that look on array to see if that ship is there, if not it's a miss. 