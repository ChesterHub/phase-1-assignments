#THESE METHODS WERE PRE-POPULATED

# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
def solve(board_string)
end

# Returns a boolean indicating whether
# or not the provided board is solved.
# The input board will be in whatever
# form `solve` returns.
def solved?(board)
end

# Takes in a board in some form and
# returns a _String_ that's well formatted
# for output to the screen. No `puts` here!
# The input board will be in whatever
# form `solve` returns.
def pretty_board(board)
end

#THESE ARE THE METHODS WE DEVELOPED
make_board(input_str)
  #parse string into data structure to create board
  #return 9x9 array that is the board
end

def pick_spot
  #choose random x,y
  #return index 0..8
  x = (0..8)
  y = (0..8)
  return x.sample
  return y.sample
end

def spot_empty?(x, y, board)
  #see what's occupying spot
  #return true if == 0
  spot = board[y][x]
  return true if spot == 0
end

def pick_num
  #choose random number 1..9
  #return number
  (1..9).sample
end

#This method will call the three methods that follow it
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

def get_box(x,y,box)
  box.each do |row|
    row.each do |x_y_coord|
      return row if [x,y] == x_y_coord
    end
  end
  raise ArgumentError.new("[X,Y] coordinates do not match any location on board")
end

def box_ok?(x, y, board, num)

  box =       [[[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]],
              [[0,3],[0,4],[0,5],[1,3],[1,4],[1,5],[2,3],[2,4],[2,5]],
              [[0,6],[0,7],[0,8],[1,6],[1,7],[1,8],[2,6],[2,7],[2,8]],
              [[3,0],[3,1],[3,2],[4,0],[4,1],[4,2],[5,0],[5,1],[5,2]],
              [[3,3],[3,4],[3,5],[4,3],[4,4],[4,5],[5,3],[5,4],[5,5]],
              [[3,6],[3,7],[3,8],[4,6],[4,7],[4,8],[5,6],[5,7],[5,8]],
              [[6,0],[6,1],[6,2],[7,0],[7,1],[7,2],[8,0],[8,1],[8,2]],
              [[6,3],[6,4],[6,5],[7,3],[7,4],[7,5],[8,3],[8,4],[8,5]],
              [[6,6],[6,7],[6,8],[7,6],[7,7],[7,8],[8,6],[8,7],[8,8]],
              ]

  our_box_within_board = get_box(x,y,box)

  our_box_within_board.each do |x_y_coord|
    this_y = x_y_coord[0]
    this_x = x_y_coord[1]
    return false if board[this_y,this_x] == num
  end

  return true
  #return true if the number is not found in box
end

#############################################################

def assign_num(num, board, x, y)
  #set board[y][x] = num
  #return board
  if num == board[y][x]
    return board
  end
end

def board_filled?(board)
  #scan for 0's
  #return true if scan does not include 0's
  board_string = board.join
  new_board = board_string.scan(/./).map(&:to_i)
  !new_board.include?(0)
end

solve(board)
end
