n1 = gets.to_i
a1 = gets.split(" ").map{|x| x.to_i}
n2 = gets.to_i
a2 = gets.split(" ").map{|x| x.to_i}
n3 = gets.to_i
a3 = gets.split(" ").map{|x| x.to_i}

# count = 0
# a1.each do |a|
#   if a2.include?(a) && a3.include?(a)
#     count += 1
#   end
# end
# 
# puts count

puts (a1 & a2 & a3).count

# Input
# The input data consist of three blocks two lines each. The first line of each block contains the number n of a player's eigenvalues (1 ≤ n ≤ 4 000). In the second line you are given n distinct integers in ascending order, which are the eigenvalues. All the eigenvalues are positive integers not exceeding 109.
# Output
# Output the number of eigenvalues of the Psych Up team.

# Sample
# input
# 5
# 13 20 22 43 146
# 4
# 13 22 43 146
# 5
# 13 43 67 89 146
# output
# 3
