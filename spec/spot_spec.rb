require_relative '../sudoku'

describe 'all spot tests' do
  let(:board) {

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

  describe 'row_ok?' do
    it 'returns true if row is available' do
      expect(row_ok?(0, board[4])).to eq true
    end

    it 'returns false if row is unavailable' do
      expect(row_ok?(9, board[4])).to be false
    end
  end

  describe 'col_ok?' do

    it 'returns true if column is available' do
      expect(col_ok?(0, board, 6)).to be true
    end

    it 'returns false if column is unavailable' do
      expect(col_ok?(9, board, 4)).to be false
    end
  end
end
