
# # too slow
# def is_good(arr, inc_pos)
#   if inc_pos >= 1 && arr[inc_pos] == arr[inc_pos-1]
#     return false
#   end
#   if arr[inc_pos] == 2 && (inc_pos == 0 || inc_pos == arr.length - 1)
#     return false
#   end
#   if inc_pos >= 2 && arr[inc_pos - 1] == 2 && arr[inc_pos] == arr[inc_pos - 2]
#     return false
#   end
#   return true
# end
#
# def inc_arr(arr, inc_pos)
#   while inc_pos >= 0 && arr[inc_pos] == 2
#     arr[inc_pos] = 0
#     inc_pos -= 1
#   end
#   if inc_pos >= 0
#     arr[inc_pos] += 1
#   end
#   return inc_pos
# end
#
# n = gets.to_i
# colors = {0=>'W', 1=>'R', 2=>'B'}
# arr = (0..n-1).map{|x| x % 2 == 0 ? 0 : 1}
# good = true
# inc_pos = n-1
# count = 0
# while true
#   if good
#     # arr.each {|x|print "#{colors[x]} "}
#     # print"\n"
#     count += 1
#   end
#
#   inc_pos = n-1
#   inc_pos = inc_arr(arr, inc_pos)
#   if inc_pos < 0
#     break
#   end
#   while true
#     if ! is_good(arr, inc_pos)
#       inc_pos = inc_arr(arr, inc_pos)
#       if inc_pos < 0
#         break
#       end
#     else
#       inc_pos += 1
#       if inc_pos >= n
#         break
#       end
#     end
#   end
#   if inc_pos < 0
#     break
#   end
# end
# print count
#

# # math solution based on the pattern of the number series
n = gets.to_i
if n < 3
  print 2
else
  prev_prev_value = 1
  prev_value = 1
  value = 0
  (n-2).times do
    value = prev_value + prev_prev_value
    prev_prev_value = prev_value
    prev_value = value
  end
  print 2*value
end


# # recursion
# # too slow! :-p
# def fib(n)
#   return 1 if (n == 1 || n == 2)
#   return (fib(n-2) + fib(n-1))
# end
# print fib(gets.to_i)


# 1225. Flags Time limit: 1.0 second Memory limit: 64 MB
# On the Day of the Flag of Russia a shop-owner decided to
# decorate the show-window of his shop with textile stripes of white, blue and red colors. He wants to satisfy the
# following conditions: Stripes of the same color cannot be placed next to each other. A blue stripe must always be
# placed between a white and a red or between a red and a white one.Determine the number of the ways to fulfill his
# wish.
#
# Input
# N, the number of the stripes, 1 ≤ N ≤ 45.
# Output
# M, the number of the ways to decorate the shop-window.
#
# Sample
# input
# 3
# output
# 4