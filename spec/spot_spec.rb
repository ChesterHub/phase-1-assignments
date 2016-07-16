require_relative '../sudoku'

describe 'all spot tests' do
  let(:board){Array.new(9) {Array.new (9), 0}}

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
