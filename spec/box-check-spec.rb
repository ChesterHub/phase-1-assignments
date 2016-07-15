require_relative '../sudoku'

describe "box_ok?" do
  let(:test_board) {####BOARD###}

  it 'returns false if number is already in box' do
    expect(box_ok?(4,5,test_board,8)).to eq false
  end

  it 'returns true if number is not already in box' do
    expect(box_ok?(4,5,test_board,9)).to eq true
  end

  it 'returns true if number is not already in box' do
    expect(box_ok?(8,8,test_board,1)).to eq true
  end

  it 'cannot correctly find a the box where coordinates are in' do
    expect(get_box(1,9,test_board,2)).to raise_error(ArgumentError)
  end

end
