a1,b1 = gets.split(" ").map{|x|x.to_i}
a2,b2 = gets.split(" ").map{|x|x.to_i}
a3,b3 = gets.split(" ").map{|x|x.to_i}

first_berries = a1 - a3
second_berries = b1 - b2

puts "#{first_berries}  #{second_berries}"


# One day, two mathematicians were walking in the forest and picking berries. They’d been walking for two hours, and
# then they stopped and decided to see who’s got more berries. They took out the scales (can you imagine a
# mathematician going to the forest without any scales?) and they weighed their baskets with berries. They wrote the
# resulting numbers a1 and b1 down on a piece of paper. Then the second mathematician put all his berries to the
# first one’s basket (so that his basket became completely empty) and they weighed their baskets again and they
# received numbers a2 and b2, correspondingly. At last, the first mathematician put all the berries to the second
# one’s basket (so that his basket became completely empty); they weighed the baskets and got numbers a3 and b3,
# correspondingly. This data was enough to find the winner and the happy mathematicians moved on. Your task is to
# calculate the mass of the berries in each mathematician’s basket by the start of the competition.

# Input
# The input data consists of three lines. The i’th line (1 ≤ i ≤ 3) contains integers ai and bi (0 ≤ ai, bi ≤ 10 000).
# Output
# Output the weight of berries in the basket of the first and the second mathematician correspondingly.

# Sample
# input
# 1 2
# 2 1
# 0 3
# output
# 1 1
