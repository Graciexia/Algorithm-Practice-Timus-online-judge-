n, m, y = gets.split(" ").map{|x| x.to_i}
output = []
(0..m-1).each do |x|
  if (x ** n) % m == y
    output << x
  end
end
if output != []
  puts output
else
  puts "-1"
end



# 1110. Power
# Time limit: 0.5 second Memory limit: 64 MB
#
# You are given the whole numbers N, M and Y. Write a program
# that will find all whole numbers X in the interval [0, M − 1] such that XN mod M = Y.
# Input The input contains a
# single line with N, M and Y (0 < N < 999, 1 < M < 999, 0 < Y < 999) separated with one space.
# Output Output all
# numbers X separated with space on one line. The numbers must be written in ascending order. If no such numbers exist
# then output −1.
# Sample input
# 2 6 4
# output
# 2 4
