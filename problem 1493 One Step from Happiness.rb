input = gets.strip.split("").map{|x| x.to_i}
if input[0] + input[1] +input[2] == input[3] + input[4] +input[5] + 1 || input[0] + input[1] +input[2] == input[3] + input[4] +input[5] - 1
  puts "Yes"
else
  puts "No"
end
print input
puts (input[3] + input[4] +input[5])
puts (input[0] + input[1] +input[2])




# 1493. One Step from Happiness
# Time limit: 1.0 second Memory limit: 64 MB
# Vova bought a ticket in a tram of the 13th
# route and counted the sums of the first three and the last three digits of the ticket's number (the number has six
# digits). It turned out that the sums differed by one exactly. "I'm one step from happiness," Vova thought, "either
# the previous or the next ticket is lucky." Is he right? "

# Input The input contains the number of the ticket. The
# number consists of six digits, some of which can be zeros. It is guaranteed that Vova counted correctly, i.e., that
# the sum of the first three digits differs from the sum of the last three digits by one exactly. Output Output "Yes"
# if Vova is right and "No" otherwise.

# Samples input
# 715068
# output
# Yes
# 445219
# output
# No
# 012200
# output
# Yes
