require_relative 'ship'
require_relative 'aircraft_carrier'
require_relative 'patrol_boat'
require_relative 'submarine'
require_relative 'battleship'
require_relative 'destroyer'


class Player

  include Ship

 attr_reader :hits, :misses, :ships

 def initialize
   # @board = Board.new
   @ships = []
   @hits = []
   @misses = []
 end

 def place(klass, coordinates, direction)
   pos = coordinates.split('') 
   fail "Your ship has to be placed within the boundries" if !(pos[0].between?('A', 'J') && pos[1].to_i.between?(1, 10))
   fail "Ships cannot overlap, there is already a ship at location" if (@ships.map {|ship| ship.coordinates}).flatten.include?(coordinates)
   @ships << klass.new(coordinates, direction)
 end


 def receive_hit(coordinates)
   if @ships.map {|ship| ship.hit(coordinates)}.flatten.include?(:hit) # include to look through arrays.!!
     @hits << coordinates
     :hit
   else
     @misses << coordinates
     :miss
   end
 end

 def lost?
   return true if @ships.reject {|ship| ship.sunk?}.empty?
   false
 end
end