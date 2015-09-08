require_relative 'ship'

class Board

  # def initialize
  #   # @ships = []
  #   @coords = ['A1']
  # end

  def place(ship)
    # ship.position
    # if @coords.include?(ship.position) || @ships.include?(ship)
    #   fail 'Those ships/coords are already on the board'
    # else
      @coords << ship.position
      @ships << ship
  end


  def receive_hit(coord)
    if @coords.include?(coord)
      "Ow!"
    else
      "What sort of shot is that, I've never seen such amateur aim.."
    end
  end


end
