a = gets.to_i
b = gets.to_i
count = 0
(a..b).each do |num|
  if num % 2 != 0
    count +=1
  end
end
puts count

# solution 2
# puts (-(gets.to_i/2) + (gets.to_i+1)/2)
