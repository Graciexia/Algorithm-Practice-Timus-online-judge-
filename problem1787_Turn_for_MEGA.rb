k,n = gets.split(" ").map{|integer|integer.to_i}
a = gets.split(" ").map{|integer|integer.to_i}
standing_cars = 0
a.each do |coming_car_num|
  standing_cars = [standing_cars + coming_car_num - k, 0].max
end
puts standing_cars


# A traffic light at the turn for the “MEGA” shopping center from the Novomoskovskiy highway works in such a way that
# k cars are able to take a turn in one minute. At weekends all the residents of the city drive to the mall to take a
# shopping, which results in a huge traffic jam at the turn. Administration of the mall ordered to install a camera
# at the nearby bridge, which is able to calculate the number of cars approaching this turn from the city. The
# observation started n minutes ago. You should use the data from the camera to determine the number of cars
# currently standing in the traffic jam.

# Input The first line contains integers k and n (1 ≤ k, n ≤ 100), which are the number of cars that can take a turn
# to “MEGA” in one minute and the number of minutes passed from the beginning of observation. The second line
# contains space-separated integers a1, …, an (0 ≤ ai ≤ 100), where ai is the number of cars that approached the turn
# during the i-th minute. The observation started at morning, when there were no cars at the turn.

# Output Output the number of cars currently standing in the traffic jam.

# Samples
# input
# 5 3
# 6 7 2
# output
# 0
# input
# 5 3
# 20 0 0
# output
# 5
