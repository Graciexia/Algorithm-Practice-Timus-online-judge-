n = gets.to_i
count = 0
(2..n).each do |prime_num|
  prime_nums = true
  (2..(prime_num**0.5).to_i).each do |num|
    if prime_num % num == 0
      prime_nums = false
      break
    end
  end
  if prime_nums == true
    count += 1
  end
end
puts count

# faster solution
# n = gets.to_i
# count = 0
# primes = []
# (2..n).each do |x|
#   is_a_prime = true
#   max_divisor = (x**0.5).to_i
#   primes.each do |prime|
#     if prime > max_divisor
#       break
#     elsif x % prime == 0
#       is_a_prime = false
#       break
#     end
#   end
#   if is_a_prime
#     primes << x
#     count += 1
#   end
# end
# puts count