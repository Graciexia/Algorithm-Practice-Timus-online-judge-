input = gets.strip
max = 0
pos = 0
(0..(input.length - 1)).each do |n|
  count = 0
  input.each_char do |char|
    if input[n] == char
      count += 1
    end
  end
  if count > max
    max = count
    pos = n
  end
end
puts input[pos]





# 1723. Sandro's Book Time limit: 0.5 second Memory limit: 64 MB It's been quite a number of years since Lich Sandro
# retired. Sometimes in the evenings, when he feels especially lonely, he takes a book that was presented to him by
# his student magicians on the occasion of his retirement. This evening the great magician is also reading the book.
# One of the chapters describes Sandro's famous discovery: he invented a universal spell many years ago. Any substring
# (a few consecutive symbols of the string) of the universal spell is also a spell, and its power is equal to the
# number of times this spell is encountered in the universal spell (for example, the string “ue” encounters in the
# string “queue” twice, and the string “aba” encounters in the string “abababa” three times). Sandro has a lot of free
# time now and he wants to find the most powerful spell. Help Sandro do it.
# Input The only input line contains the
# universal spell invented by Sandro. The spell is a non-empty string consisting of lowercase English letters with
# length at most 50.
# Output Output any of the most powerful spells, according to Sandro's definition.

# Sample input
# tebidohtebidoh
# output
# tebidoh
