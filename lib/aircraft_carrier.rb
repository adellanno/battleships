require_relative 'ship'

class Aircraft_Carrier     
  include Ship  
  def initialize(position, direction)
   @start_position = position
   @direction = direction
   @size = 5
   @hits = 0
   calculate_position(position)
 end
end