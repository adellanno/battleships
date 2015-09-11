require_relative 'ship'

class Patrol_Boat     
  include Ship  
  def initialize(position, direction)
   @start_position = position
   @direction = direction
   @size = 2
   @hits = 0
   calculate_position(position)
 end
end