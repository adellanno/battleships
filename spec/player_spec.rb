require 'player'

describe Player do
 context 'when #initialize' do
   # it 'has a board' do
   #   expect(subject).to respond_to(:board)
   # end

   it 'has hits overview' do
     expect(subject).to respond_to(:hits)
   end

   it 'has miss overview' do
     expect(subject).to respond_to(:misses)
   end
 end

 describe '#place' do
   it 'can place a ship' do
     subject.place(Submarine, 'B1', :west)
   end
 end

 describe '#receive_hit' do
   it 'will miss if off-target' do
     subject.place Submarine, 'D3', :west
     expect(subject.receive_hit 'A1').to eq :miss
   end

   it 'will hit if on-target' do
     subject.place Submarine, 'D3', :west
     expect(subject.receive_hit 'D3').to eq :hit
   end
 end

 it 'can lose' do
   expect(subject.lost?).to eq true
 end

 it 'will raise an error if placed out of the board boundary' do
   expect{Player.new.place(Submarine, 'A1', 'south')}.to raise_error('Your ship needs to be placed within the boundary')
end

it 'raises an error when ships are overlapping' do 
  subject.place(Submarine, 'A1', 'north')
  expect{ subject.place(Submarine, 'A1', 'north') }.to raise_error("Ships cannot overlap, there is already a ship at location")
end

it 'creates a submarine' do
  expect(subject.place(Submarine, 'B5', 'north').first).to be_an_instance_of(Submarine)
end
end