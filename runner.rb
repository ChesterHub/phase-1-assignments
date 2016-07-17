require_relative 'sudoku'

# The sudoku puzzles that your program will solve can be found
# in the sudoku_puzzles.txt file.
#
# Currently, Line 18 defines the variable board_string to equal
# the first puzzle (i.e., the first line in the .txt file).
# After your program can solve this first puzzle, edit
# the code below, so that the program tries to solve
# all of the puzzles.
#
# Remember, the file has newline characters at the end of each line,
# so we call String#chomp to remove them.

#board_string = File.readlines('sudoku_puzzles.txt').first.chomp

#board_string = '1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--'
board_string =  '---------------------------------------------------------------------------------'

board = make_board(board_string)

solved_board = solve(board)
#if solved?(solved_board)
#  puts "The board was solved!"
  p solved_board
  #puts pretty_board(solved_board)
#else
#  puts "The board wasn't solved :("
#end
