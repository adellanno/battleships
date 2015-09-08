require_relative 'board'

class Player

  attr_accessor :ships_location

  def initialize
    @ships_location = []
  end

  def place(ship)
    # ship.position
    # if @coords.include?(ship.position) || @ships.include?(ship)
    #   fail 'Those ships/coords are already on the board'
    # else
    # @coords << ship.position
    @ships_location << ship
  end

end
