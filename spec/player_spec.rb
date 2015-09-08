require 'player'

describe Player do

  let(:ship){double :ship}
  it 'places ship on the board' do
    subject.place ship
    expect(subject.ships_location.count).to eq(1)
  end

  it "raises an error when there's already a ship in that location" do
    subject.place ship
    expect(subject.place ship).to raise_error 'That place is taken'
  end


end
