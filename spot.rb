def spot_ok?(num, board, x, y)
  if row_ok?(num, board[y]) && col_ok?(num, board, x) && box_ok?(x, y)
    return true
  else
    return false
  end
end

def row_ok?(num, row)
  row.include?(num)
end

def col_ok?(num, board, x)
  board.each do |row|
    if row[x] == num
      return true
    else
      return false
    end
  end
end


