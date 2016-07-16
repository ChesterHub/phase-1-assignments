require_relative '../sudoku'

describe "box_ok?" do
  let(:test_board) {[
   [0, 8, 0, 0, 2, 0, 0, 0, 0],
   [0, 4, 0, 5, 0, 0, 3, 2, 0],
   [0, 2, 0, 3, 0, 9, 0, 4, 6],
   [6, 0, 0, 0, 9, 0, 0, 0, 4],
   [0, 0, 0, 6, 4, 0, 5, 0, 1],
   [1, 3, 4, 0, 5, 0, 7, 0, 0],
   [3, 6, 0, 0, 0, 4, 0, 0, 2],
   [4, 0, 7, 2, 3, 0, 6, 0, 0],
   [0, 0, 0, 7, 0, 0, 4, 5, 0]
   ]}

   it 'returns false if number is already in box' do
    expect(box_ok?(3,4,test_board,6)).to eq false
  end

  it 'returns true if number is not already in box' do
    expect(box_ok?(4,5,test_board,3)).to eq true
  end

  it 'returns true if number is not already in box' do
    expect(box_ok?(8,8,test_board,1)).to eq true
  end

  it 'cannot correctly find a the box where coordinates are in' do
    expect(get_box(1,9,test_board,2)).to raise_error(ArgumentError)
  end

end
