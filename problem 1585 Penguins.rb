n = gets.to_i
penguins = {'Emperor Penguin' => 0, 'Macaroni Penguin' => 0, 'Little Penguin' => 0}
(1..n).each do
  penguins[gets.strip] += 1
end
puts penguins.key(penguins.values.max)

# first version of solution
# n = gets.to_i
# penguins = {Emperor_Penguin: 0, Macaroni_Penguin: 0, Little_Penguin: 0}
# (1..n).each do
#   input = gets.split(" ").join("_").to_sym
#   penguins[input] += 1
# end
# numerous = []
# penguins.each_value do |count|
#   numerous << count
# end
# puts penguins.key(numerous.max).to_s.split("_").join(" ")





# 1585. Penguins
# Time limit: 1.0 second
# Memory limit: 64 MB

# Programmer Denis has been dreaming of visiting Antarctica since his childhood. However, there are no regular
# flights to Antarctica from his city. That is why Denis has been studying the continent for the whole summer using a
# local cinema. Now he knows that there are several kinds of penguins: Emperor Penguins, which are fond of singing;
# Little Penguins, which enjoy dancing; Macaroni Penguins, which like to go surfing. Unfortunately, it was not said
# in the cartoons which kind of penguins was largest in number. Petya decided to clarify this. He watched the
# cartoons once more and every time he saw a penguin he jotted down its kind in his notebook. Then he gave his
# notebook to you and asked you to determine the most numerous kind of penguins.

# Input The first line contains the number n of entries in the notebook (1 ≤ n ≤ 1000). In each of the next n lines,
# there is the name of a kind of penguins, which is one of the following: “Emperor Penguin,” “Little Penguin,” and
# “Macaroni Penguin.” Output Output the most numerous kind of penguins. It is guaranteed that there is only one such
# kind.

# Sample
# input
# 7
# Emperor Penguin
# Macaroni Penguin
# Little Penguin
# Emperor Penguin
# Macaroni Penguin
# Macaroni Penguin
# Little Penguin
# output
# Macaroni Penguin
