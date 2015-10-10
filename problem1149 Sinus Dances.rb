def get_A (n)
  output = "sin(#{n})"
  (1..n-1).reverse_each do |num|
    output = "sin(#{num}#{num % 2 == 0 ? '+' : '-'}#{output})"
  end
  output
end
n = gets.to_i
output = "#{get_A(1)}+#{n}"
(2..n).each do |num|
  output = "(#{output})#{get_A(num)}+#{n-num+1}"
end
puts output

# 1149. Sinus Dances
# Time limit: 1.0 second
# Memory limit: 64 MB
# Let An = sin(1–sin(2+sin(3–sin(4+…sin(n))…)
# Let Sn = (…(A1+n)A2+n–1)A3+…+2)An+1
# For given N print SN
# Input
# One integer N. 1 ≤ N ≤ 200
# Output
# Line containing SN
# Sample
# input
# 3
# output
# ((sin(1)+3)sin(1–sin(2))+2)sin(1–sin(2+sin(3)))+1
