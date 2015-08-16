stones_quantity = gets.to_i
stones_weight = gets.split(" ").map {|stone| stone.to_i}

print stones_quantity
print stones_weight
stones_weight_from_big = stones_weight.sort.reverse
stones1 =[]
stones2 = []
stones_weight_from_big.each_with_index do |stone, index|
  print "index=#{index}, stone=#{stone}\n"
  if index % 2 == 0
    stones1 << stone
  else
    stones2 << stone
  end
end
value1 = stones1.reduce :+
value2 = stones2.reduce :+

min_difference = value1-value2

print stones1
print stones2
puts min_difference
