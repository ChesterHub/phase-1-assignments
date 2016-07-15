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
  spot.empty?
end

def pick_num
  #choose random number 1..9
  #return number
  (1..9).sample
end

#This method will call the three methods that follow it
spot_ok?(num, board, x, y)
  #call check methods
  #return boolean
end

row_ok?(num, row -board[y])
  #return boolean
end

col_ok?(num, col - board[x])
  #return boolean
end

box_ok?(x, y)
  #return boolean
end

#############################################################

def assign_num(num, board, x, y)
  #set board[y][x] = num
  #return board

end

def board_filled?(board)
  #scan for 0's
  #return true if scan does not include 0's
end

solve(board)
end
