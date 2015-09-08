require 'ship'

describe Ship do
  let(:ship){Ship.new('xx')}

 it "records a hit to the ship" do
   ship.receive_hit
   expect(ship.number_of_hits.count).to eq(1) # better way is for array to reduce by 1
  end

  it "knows its position" do
   expect(ship.location).to eq('xx')
  end

  it "knows a ship that is size 2 has sunk" do
   ship.receive_hit
   expect{ship.receive_hit}.to raise_error("You sunk me!")
  end


end
