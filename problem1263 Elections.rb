n,m = gets.split(" ").map{|x| x.to_i}
votes = {}
(1..n).each do |candidate|
  votes[candidate] = 0
end
(1..m).each do
  vote = gets.to_i
  votes[vote] += 1
end
votes.each_value do |count|
  printf("%.2f%%\n",100*count/m.to_f)
end


# array solution
# n,m = gets.split(" ").map{|x| x.to_i}
# votes = (0..n-1).map{|y| y = 0}
# (1..m).each do
#   vote = gets.to_i
#   votes[vote-1] += 1
# end
# votes.each do |count|
#   printf("%.2f%%\n",100*count/m.to_f)
# end




# time limit exceeded
# n,m = gets.split(" ").map{|x| x.to_i}
# input = STDIN.read.split(" ").map{|x| x.to_i}
# (1..n).each do |candidate|
#   count = 0
#   input.each do |elector|
#     if elector == candidate
#       count += 1
#     end
#   end
#   printf("%.2f%%\n",100*count/m.to_f)
# end


# n,m = gets.split(" ").map{|x| x.to_i}
# input = STDIN.read.split(" ").map{|x| x.to_i}
# input.sort.each do |candidate|
#   counts = input.count(candidate)
#   printf("%.2f%%\n",100*counts/m.to_f)
# end


# 1263. Elections
# Time limit: 1.0 second
# Memory limit: 64 MB

# The next in turn elections are to come soon. All the fences are postered with leaflets and the mail boxes are full
# of throwaways. Cheeky guys are looking at us from TV’s and promise to make our life better… And programmer
# Vasechkin is knee-deep in work. He is to write a program that would calculate the results of voting.

# Input The first line contains a number of candidates N (1 ≤ N ≤ 10000) and a number of electors M (1 ≤ M ≤ 10000).
# Then M lines follow, each one contains a number of candidate that the elector voted for. The candidates are
# numbered with integers from 1 to N. Output Output N lines. The i-th line should contain the percent of electors
# that voted for the i-th candidate (to within 2 decimals).

# Sample
# input
# 3 6
# 1
# 2
# 3
# 2
# 1
# 1
# output
# 50.00%
# 33.33%
# 16.67%

