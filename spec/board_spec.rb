require 'board'

describe Board do

  let(:ship){double :ship}
  it 'places ship on the board' do
    subject.place ship
    expect(subject.board.count).to eq(1)
  end

  it "raises an error when there's already a ship in that location" do
    subject.place ship
    expect{subject.place ship}.to raise_error 'That place is taken'
  end

  it 'reports a hit' do
    subject.place ship
    expect(subject.hit ship).to eq("Hit!")
end

  it 'reports a miss' do
    subject.place ship
    expect(subject.hit("abc")).to eq("Miss")
  end

  it 'check if all ships are sunk/player has won' do
    subject.place ship
    subject.hit ship
    expect(subject.board).to be_empty
  end

  it 'reports hit positions to an array' do
    subject.place ship
    subject.hit ship
    expect(subject.hits_array.count).to eq(1)
  end

  it 'reports miss positions to an array' do
    subject.place ship
    subject.hit 'abc'
    expect(subject.miss_array.count).to eq(1)
  end

  it 'check if all ships are sunk/player has won' do
      subject.place ship
      subject.hit ship
      expect(subject.board).to be_empty
  end

  it 'Tells player that they lose' do
      # subject.hit ship
      expect{subject.hit(ship).board.empty?}.to raise_error "You lose!"
  end



end
