n = gets.to_i
main_offsets = 0
input = gets.strip.split(" ").map{|x| x.to_i}
input.each do |distance|
  main_offsets += distance
end
puts format('%.6f', main_offsets / n.to_f)


# 1457. Heating Main
# Time limit: 1.0 second
# Memory limit: 64 MB

# Problem The heating main was build under Stalin, so it is a straight branchless tunnel. Each point of it is defined
# by its main offset. The main offset of the start point, which is located under the courthouse, is zero. The distance
# between any two points of the heating main equals to the absolute value of the difference between their main offsets
# . It appeared that the heating main lies under all N places visited by the old man. For each gulley, which leads
# from the heating main straight to one of the places, the main offset P[i] was found. The old man can get out from
# the heating main through these gulleys only. If he tries to use another gulley, he would be immediately caught by
# watchful policemen as a dangerous vagrant. The old man is rather old, and his effort to pass some distance is
# proportionate to the square of this distance. That is why the old man would like to live in some point of the
# heating main so that the arithmetic mean of the efforts to reach each of the places is minimal. Input The first line
# contains the integer number N (1 ≤ N ≤ 1000). The second line contains N integer numbers P[i] (0 ≤ P[i] ≤ 106).
# Output You should output the main offset of the desired point. The offset should be printed with at least six digits
# after decimal point. If the problem has several solutions, you should output any of them.
#
# Sample input
# 3
# 7 4 5
# output
# 5.333333