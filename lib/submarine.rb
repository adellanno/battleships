require_relative 'ship'

class Submarine     
  include Ship  
  def initialize(position, direction)
   @start_position = position
   @direction = direction
   @size = 3
   @hits = 0
   calculate_position(position)
 end
end