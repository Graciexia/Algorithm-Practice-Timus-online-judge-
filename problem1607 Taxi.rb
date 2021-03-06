petr, petr_inc, taxi, taxi_dec = gets.split(" ").map{|x| x.to_i}
n = [taxi/taxi_dec, petr/petr_inc].max * 2
(1..n).each do |turn|
  if turn % 2 == 0
    taxi -= taxi_dec
  else
    petr += petr_inc
    if petr >= taxi
      break
    end
  end
end
if petr - petr_inc > taxi
  puts (petr - petr_inc)
else
  puts taxi
end

# soulution 2
# petr, petr_inc, taxi, taxi_dec = gets.split(" ").map{|x| x.to_i}
# while true
#   petr += petr_inc
#   if petr >= taxi
#     puts taxi
#     break
#   end
#   taxi -= taxi_dec
#   if taxi <= petr
#     puts petr
#     break
#   end
# end



# 1607. Taxi
# Time limit: 0.5 second Memory limit: 64 MB
# Petr likes going by taxi. For him, it is not only the pleasure
# of a fast and comfortable ride, but also the opportunity to bargain with the driver over the fare. The bargaining
# between Petr and taxi drivers always follows the same scheme: — To the airport! I pay 150 roubles. — No, I won't
# take you for 150. Let's go for 1000. — Are you crazy? I haven't got that much on me! Ok, let it be 200. — Are you
# laughing? I agree to 900. — Well, I'll give 250. — Guy, do you know how much gas is? Pay 800 and off we go! … Such a
# dialog continues until they agree on the fare. Petr always increases his amount by the same number, and the taxi
# driver decreases it in the same way. The driver would not ask a sum that is less than that offered by Petr. In this
# case, he will agree with Petr's offer. Petr will act similarly.
#
# Input The single input line contains four integer
# numbers: the initial Petr's offer a, Petr's raise to his offer b, the initial fare required by the driver c, and the
# driver's reduction of his fare d; 1 ≤ a, b, c, d ≤ 10000.
# Output Output the amount of money that Petr will pay for
# the ride.
#
# Sample input
# 150 50 1000 100
# output
# 450
