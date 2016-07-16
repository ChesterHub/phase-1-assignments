require_relative '../sudoku'

describe "make-board" do
  let(:input_str) { '-8--2-----4-5--32--2-3-9-466---9---4---64-5-1134-5-7--36---4--24-723-6-----7--45-' }

  let(:result_board) {

   [[0, 8, 0, 0, 2, 0, 0, 0, 0],
    [0, 4, 0, 5, 0, 0, 3, 2, 0],
    [0, 2, 0, 3, 0, 9, 0, 4, 6],
    [6, 0, 0, 0, 9, 0, 0, 0, 4],
    [0, 0, 0, 6, 4, 0, 5, 0, 1],
    [1, 3, 4, 0, 5, 0, 7, 0, 0],
    [3, 6, 0, 0, 0, 4, 0, 0, 2],
    [4, 0, 7, 2, 3, 0, 6, 0, 0],
    [0, 0, 0, 7, 0, 0, 4, 5, 0]]

  }

  it 'makes a properly formatted board' do
    expect(make_board(input_str)).to eq result_board
  end

end
