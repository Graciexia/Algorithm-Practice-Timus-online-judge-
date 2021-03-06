t1, t2 = gets.split(" ").map{|x| x.to_i}
debugging_time = gets.split(" ").map{|x| x.to_i}
if t2 - debugging_time.reduce(:+) * 20 < t1
  puts "Dirty debug :("
else
  puts "No chance."
end


# 1636. Penalty Time
# Time limit: 1.0 second Memory limit: 64 MB
# The ZZZ team failed once again. They took part in the
# contest in Yekaterinozavodsk and were the first to solve all the problems. They did it even before the monitor was
# frozen. However, in the table of final results they were only second, because the QXX team had a better total time.
# A member of the QXX team supposes that it happened because the participants were unpunctual and used dirty debug
# methods. However, the captain of the ZZZ team claims that their complicated tactics had to be blamed for the
# failure, because even if all their solutions had been accepted in the first run the team would still have taken the
# second place. Find out which of them is right. Input The first line contains the total times in minutes T1 and T2 of
# the teams QXX and ZZZ, respectively, separated by a space (250 ≤ T1 ≤ T2 ≤ 2400). In the second line there are 10
# integers separated by a space; the ith integer is the number of rejected runs that the ZZZ team had when solving the
# ith problem. Recall that every rejected run increases the total time by 20 minutes.
# Output Output “No chance.” if
# the rejected runs had no impact on the final place of the ZZZ team. Otherwise, output “Dirty debug :(”. If total
# times are equal, the teams are sorted alphabetically, so in this case the ZZZ team is in the second place.
# Samples
# input
# 290 420
# 0 0 0 2 1 0 2 0 1 0
# output
# No chance
# input.
# 300 719
# 0 0 0 0 0 0 21 0 0 0
# output
# Dirty debug :(
