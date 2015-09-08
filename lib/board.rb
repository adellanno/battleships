require_relative 'ship'

class Board

  attr_accessor :board

  def initialize
    @board = []
  end

  def shot(coords)
    board << coords
    # if @coords.include?(coord)
    #   "Ow!"
    # else
    #   "What sort of shot is that, I've never seen such amateur aim.."
    # end
  end


end
