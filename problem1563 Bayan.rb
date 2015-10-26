n = gets.to_i
bayan = {}
count = 0
(1..n).each do
  brand = gets.strip
  if bayan[brand] == nil
    bayan[brand] = 1
  else
   count += 1
  end
end
puts count