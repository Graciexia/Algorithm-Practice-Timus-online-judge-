n,k = gets.split(" ").map{|x| x.to_i}
trucks = gets.split(" ").map{|x| x.to_i}
count_booms = 0
count_droids = 0
trucks.each do |truck|
  if truck - k >= 0
    count_booms += truck - k
  else
    count_droids += k - truck
  end
end
puts "#{count_booms} #{count_droids}"


# 1991. The battle near the swamp
# Time limit: 1.0 second
# Memory limit: 64 MB
#
# In the battle with the Trade Federation, Queen Amidala decided to ask gungans for help. Jar Jar Binks escorted the
# Queen and her people to the holy place where they had an agreement. The gungans agreed to provide their army in
# order to get the droids of the Federation out from the capital. The gungan ruler Boss Nass was so grateful for
# uniting the nations that he appointed Jar Jar a general. And here they are: two armies lined up along the bank of
# the swamp. The droids of the Federation are well-disciplined soldiers. They stand in neat formation, divided into n
# blocks of k droids each. The gungans have a foolproof weapon against droids, which is small energy balls called
# boom booms. One such ball can disable exactly one droid. Jar Jar Binks also decided to split his army into n parts
# and give each part a task to destroy the corresponding block of droids. Each part received a truck with boom booms.
# Now help general Binks calculate the number of boom booms that will be left unused and the number of droids that
# will survive the attack. You can assume that when a boom boom is fired at a droid by a gungan, it always hits the
# target. Input The first line of the input contains numbers n and k (1 ≤ n, k ≤ 10 000). The second line contains n
# numbers ai (0 ≤ ai ≤ 100 000) — the number of boom-booms in the i-th truck. Output Print two integers — the number
# of unused boom booms and the number of survived droids.

# Sample
# input
# 4 5
# 2 7 5 0
# output
# 2 8

