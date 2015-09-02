n = gets.to_i

# soulution1 O(n)
# count = 0
# if n < 1
#   (n..1).each do |num|
#   count = count + num
#   end
# else
#   (1..n).each do |num|
#     count = count + num
#   end
# end
# puts count

# solution2 O(1)
if n <= 0
  count = n * (n.abs + 1) / 2 + 1
else
  count = n * (n + 1) / 2
end
puts count







# 1068. Sum
# Time limit: 2.0 second
# Memory limit: 64 MB
# Your task is to find the sum of all integer numbers lying between 1 and N inclusive.
#                                                                             Input
# The input consists of a single integer N that is not greater than 10000 by it's absolute value.
# Output
# Write a single integer number that is the sum of all integer numbers lying between 1 and N inclusive.
# Sample
# input
# -3
# output
# -5