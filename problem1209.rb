n = gets.to_i
position_nums = STDIN.read.split(" ").map{|num|num.to_i}

position_nums.each do |num|
  root = ((2 * (num - 1)) ** 0.5).to_i
  if root * (root + 1 ) == 2 * (num - 1 )
    print "1 "
  else
    print "0 "
  end
end
print "\n"





# 1209. 1, 10, 100, 1000...
# Time limit: 1.0 second
# Memory limit: 64 MB
# Let's consider an infinite sequence of digits constructed of ascending powers of 10 written one after another. Here
# is the beginning of the sequence: 110100100010000… You are to find out what digit is located at the definite
# position of the sequence.

# Input
# There is the only integer N in the first line (1 ≤ N ≤ 65535). The i-th of N left lines contains the integer
# Ki — the number of position in the sequence (1 ≤ Ki ≤ 231 − 1).
# Output
# You are to output N digits 0 or 1 separated
# with a space. More precisely, the i-th digit of output is to be equal to the Ki-th digit of described above sequence

# Sample input
# 4 3 14 7 6
# output
# 0 0 1 0