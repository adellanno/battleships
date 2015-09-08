require_relative 'board'

class Player

  attr_accessor :ships_location

  def initialize
    @ships_location = []
  end

  def place(ship)
    if @ships_location.include?(ship)
      fail 'That place is taken'
    else
      @ships_location << ship
    end
  end

end
