n = gets.to_i
input = STDIN.read.upcase.split(" ")
boxes = {A: 1, P: 1, O: 1, R: 1, B: 2, M: 2, S: 2, D: 3, G: 3, J: 3, K: 3, T: 3, W: 3}
count = 0
start_pos = 1
input.each do |word|
  end_pos = boxes[word[0].to_sym]
  count += (end_pos - start_pos).abs
  start_pos = end_pos
end
puts count


# 2023. Donald is a postman
# Time limit: 1.0 second
# Memory limit: 64 MB


# Donald Duck works as a postman for the Walt Disney Studios. He delivers children’s letters from all over the world
# to his friends, which are cartoon characters. The Studios has three cases for the letters, with nine sections in
# each case. Every section has the name of the receiver on it. All cases stand in a row as it is shown at the picture
# below. Donald Duck have brought n letters today. Initially, he stands near the leftmost case. He has to make one
# step to go to the neighboring case or to the previous one. How many steps will he make until he puts all the
# letters into the respective sections, if he does this in the order they are in his bag?

# Input The first line contains an integer n that is the amount of letters in Donald’s bag (1 ≤ n ≤ 1 000). The
# following n lines contain receivers of the letters in the order they are in the bag. Output Output the number of
# steps Donald should make to put all the letters into the cases.
#
# Sample
# input
# 4
# Aurora
# Tiana
# Ariel
# Mulan
# output
# 5

