require 'board'

describe Board do
  it 'receives a shot' do
  subject.shot("abc")
  expect(subject.board.count).to eq(1)
end

  it 'reports a miss' do
    subject.shot("abc")
    expect{subject.shot("abc")}.to raise_error 'You missed!'
  end
end
