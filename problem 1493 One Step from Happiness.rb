tiket_number = gets.strip.to_i
input_up = (tiket_number+1).to_s.split("").map{|x| x.to_i}
input_down = (tiket_number-1).to_s.split("").map{|x| x.to_i}
n = input_up.length
m = input_down.length
sum_input_up = 0
sum_input_down = 0
if n > 3 && m >3
  (0..n-4).each do |x|
    sum_input_up += input_up[x]
  end
  (0..m-4).each do |x|
    sum_input_down += input_down[x]
  end
  if sum_input_up == input_up[-3] + input_up[-2] +input_up[-1] ||
    sum_input_down == input_down[-3] + input_down[-2] +input_down[-1]
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end




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
