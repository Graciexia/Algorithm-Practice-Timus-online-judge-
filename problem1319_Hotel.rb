n = gets.to_i
arr = []
(0..(n-1)).each do |row|
  arr[row] = []
end
value = 1
(0..n-1).reverse_each do |start_column|
  row = 0
  column = start_column
  while column <= n-1
    arr[row][column] = value
    value = value + 1
    row += 1
    column += 1
  end
end

(1..n-1).each do |start_row|
  column = 0
  row = start_row
  while row <= n-1
    arr[row][column] = value
    value += 1
    row += 1
    column += 1
  end
end

# solution 2 for the bottom left half triangle
# value = n * n
# (0..n-2).each do |start_column|
#   row = n-1
#   column = start_column
#   while column >= 0
#     arr[row][column] = value
#     value = value - 1
#     row -= 1
#     column -= 1
#   end
# end

(0..n-1).each do |row|
  print "#{arr[row].join(" ")}\n"
end


# 1319. Hotel
# Time limit: 1.0 second
# Memory limit: 64 MB
# You programmers are lucky! You don't have to deal with these terrible people – designers… This story happened with
# me not so long ago. We had an order from a company building a new hotel. One day they brought a sketch to our
# workshop. They said that THIS was invented by a very cool designer. They said they had paid heaps of money for THIS
# . So, THIS had to be built. In general, THIS was not a very complex thing. It was just a square set of shelves
# where a porter puts guests' mail. Usual hotels have usual stands with shelves for this purpose. But this cool
# designer had turned everything upside down! To be more precise, not exactly upside down, but upon a corner.
# Moreover, the cells should be numbered from the right to the left, from the top to the bottom, looking at THIS,
# staying on its corner, of course. Tell me please, how can the master attach the labels with numbers to THIS? He
# will look on the shelves, staying normally on its side, you know. He will get tangled on the fourth label already!
# I will get tangled on the seventh, myself… Actually one should make such designers to label the shelves themselves.

# Input The input consists of the only one integer N (1 ≤ N ≤ 100), which is the size of the square.
# Output You are
# to write a program that outputs the table of numbers, as they would be arranged when THIS would stand in the
# workshop. The label with number 1 should be in the upper right corner and other numbers should be arranged along
# the diagonals from the top to the bottom. The label with the last number (N*N) should be in the lower left corner.
# — Oh! You are the cool programmer, I know. Couldn’t you help me? I need just a printout of the table with an
# arrangement of the labels in the cells. But not in such way as THIS will hang on the wall, but as THIS stands on
# the table of my workshop. Yes, I understand that you are busy, but you are busy every time! Preparations to the
# Ural Championship, tests, solutions… So what? If you can’t do it yourself – entrust your competitors with this task
# . They are the best programmers all over the world, aren’t they? I don’t believe that they couldn’t print the
# desired table having the size of the square! I would never believe it! So… Excellent! I will take the desired
# printout away after the contest.

# Sample
# input
# 3
# output
# 4 2 1
# 7 5 3
# 9 8 6
