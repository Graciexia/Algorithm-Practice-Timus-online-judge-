n, k = gets.split(" ").map{|integer|integer.to_i}
min_time = [((n * 2)/k.to_f).ceil, 2].max
puts min_time

# After the personal contest, happy but hungry programmers dropped into the restaurant “Ural Steaks” and ordered n
# specialty steaks. Each steak is cooked by frying each of its sides on a frying pan for one minute.

# input The only input line contains the integers n and k separated with a space (1 ≤ n, k ≤ 1000).

# output  the minimal number of minutes in which the chef can cook n steaks.
#
# Sample
# input	output
# 3 2
# 3