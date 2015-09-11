require 'ship'
require 'submarine'

describe Ship do
 let(:submarine){described_class.new 'D2', :west}

 context 'when ship is #initialized' do
   it 'has a position' do
     expect(Submarine.new('D2', 'west').start_position).to eq 'D2'
   end

   it 'has a direction' do
    sub = Submarine.new('D2', 'west')
     expect(sub.direction).to eq 'west'
   end
 end

 describe '#hit position' do
   it 'can take a hit' do
    sub = Submarine.new('D2', 'west')
     expect(sub.hit 'D2').to eq :hit
   end

   it 'can be missed' do
    sub = Submarine.new('D2', 'west')
     expect(sub.hit 'D1').to eq :miss
   end

   it 'will record amount of hits' do
    sub = Submarine.new('D2', 'west')
     sub.hit 'D2'
     expect(sub.hits).to eq 1
   end
 end

   it 'can face west' do 
   sub = Submarine.new('D2', 'west')
  expect(sub.coordinates).to match_array(['D2','E2', 'F2'])
   end

 it 'creates a size 3 sub' do
  sub = Submarine.new('D2', 'west')
  expect(sub.coordinates.size).to eq(3)
  end

 describe '#sunk?' do

 

   it 'can be sunk' do
     sub = Submarine.new('D2', 'west')
     sub.hit 'D2'
     sub.hit 'E2'
     sub.hit 'F2'
     expect(sub).to be_sunk
   end

   it 'is not sunk initially' do
     expect(sub = Submarine.new('D2', 'west')).not_to be_sunk
   end
 end

   # it 'can face north' do 
   #   expect(ship.position).to match_array(['D2','D3'])
   # end

   # it 'can face east' do 
   #   expect(ship.position).to match_array(['D2','C2'])
   # end

   # it 'can face south' do 
   #   expect(ship.position).to match_array(['D2','D1'])
   # end
 
 


end
#    it 'can face east' do

#    it 'can face south' do

#    it 'can face west' do
#  end
# end