n = gets.to_i
arr = STDIN.read.split(" ")
horizontal_line = ["a","b","c","d","e","f","g","h"]
vertical_line = [1,2,3,4,5,6,7,8]
arr.each do |line|
  rank,file = line.split('')
  # rankfile = [horizontal_line.find_index(rank)+1, file.to_i]
  rank = horizontal_line.find_index(rank)+1
  file = file.to_i
  sum = 0
  [-1,1].each do |col_offset|
    [-2,2].each do |row_offset|
      if rank + row_offset <= 8 && rank + row_offset >= 1 && file + col_offset <= 8 && file + col_offset >= 1
        sum += 1
      end
    end
  end
  [-2,2].each do |col_offset|
    [-1,1].each do |row_offset|
      if rank + row_offset <= 8 && rank + row_offset >= 1 && file + col_offset <= 8 && file + col_offset >= 1
        sum += 1
      end
    end
  end
  puts sum
end


# 1197. Lonesome Knight Time limit: 1.0 second Memory limit: 64 MB
# The statement of this problem is very simple: you
# are to determine how many squares of the chessboard can be attacked by a knight standing alone on the board. Recall
# that a knight moves two squares forward (horizontally or vertically in any direction) and then one square sideways
# (perpedicularly to the first direction).

# Input The first line contains the number N of test cases, 1 ≤ N ≤ 100. Each
# of the following N lines contains a test: two characters. The first character is a lowercase English letter from 'a'
# to 'h' and the second character is an integer from 1 to 8; they specify the rank and file of the square at which the
# knight is standing.
# Output Output N lines. Each line should contain the number of the squares of the chessboard that
# are under attack by the knight.
#
# Sample inpu 3 a1 d4 g6
# output 2 8 6
