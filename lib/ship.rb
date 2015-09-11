module Ship

 attr_reader :position, :direction, :hits, :start_position, :coordinates, :size

 def initialize(position, direction, size=5)
   @start_position = position
   @direction = direction
   @size = size
   @hits = 0
   calculate_position(position)
 end

 def hit(position)
   return :miss if !(@coordinates.include?(position))
   return add_hit if @coordinates.include?(position)
 end

 def sunk?
   @hits >= @size
 end


 def calculate_position(position)
  @coordinates = []
   size.times do
    if position[1..2].to_i < 1 || position[1..2].to_i > 10 || position[0] < 'A' || position[0] > 'J'
      fail 'Your ship needs to be placed within the boundary'
    end

coordinates << position

case direction

 when 'north' 
  position = position[0] + (position[1].to_i + 1).to_s

when 'south'
  position = position[0] + (position[1].to_i - 1).to_s

when 'east' 
  position = (position[0].ord - 1).chr +  position[1]

when 'west' 
  position = (position[0].ord + 1).chr + position[1]

end
end
end

 private # ANYTHING UNDER HERE IS PRIVATE!!



 def add_hit
   @hits += 1
   :hit
 end
end

  # def receive_hit
  #   number_of_hits.pop
  #   fail "You sunk me!" if number_of_hits.empty?
  # end