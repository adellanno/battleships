require_relative 'ship'

class Battleship     
  include Ship  
  def initialize(position, direction)
   @start_position = position
   @direction = direction
   @size = 4
   @hits = 0
   calculate_position(position)
 end
end