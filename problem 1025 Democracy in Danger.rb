n = gets.to_i
groups = gets.strip.split(" ").map{|x| x.to_i}
min_supporters = 0
groups.sort[0..(n-1)/2].each do |group|
  min_supporters += (group + 1)/2
end
puts min_supporters





# 1025. Democracy in Danger
# Time limit: 1.0 second
# Memory limit: 64 MB
#
# Problem You are to write a program, which would determine according to the given partition of the electors the
# minimal number of supporters of the party, sufficient for putting into effect of any decision, with some
# distribution of those supporters among the groups. Input In the first line an only odd integer K — a quantity of
# groups — is written (1 ≤ K ≤ 101). In the second line there are written K odd integers, separated with a space.
# Those numbers define a number of voters in each group. The population of the island does not exceeds 9999 persons.
# Output You should write a minimal quantity of supporters of the party, that can put into effect any decision.
# Sample
# input
# 3
# 5 7 5
# output
# 6