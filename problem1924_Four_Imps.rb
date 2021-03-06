n = gets.to_i
# print (['grimy','grimy','black','black'][(n-1)%4])
print (((n-1)/2).to_i % 2 == 0 ? 'grimy' : 'black')

# 1924. Four Imps Time limit: 1.0 second Memory limit: 64 MB The world is in danger. One famous swindler passed away
# recently (by the way, nobody knows his real name, so let's call him Ostap). Having got to the hell he decided to
# make a deal with the Devil. More precisely, it was, actually, not a deal but a stake in a totalizator. The rules of
# the game are quite simple. Several imps divide into two teams — “black” and “grimy”. Then they go to the game field
# . Numbers from 1 to n are written on the field, and the teams do their turns one after another by putting down with
# black ink signs of + and − between the numbers. When there is no two adjacent numbers without sign between them
# left, players calculate the result of obtained expression on the field. The goal of the “black” team is to make
# this result even, the goal of the “grimy” team is to make it odd. All four imps are experts in this game, therefore
# they always do optimal turns. “Black” team plays first. The totalizator rules are the following: if Ostap guesses
# which team wins, he will get his life back. Otherwise, the Devil will get the power over the whole world. The
# stakes are high, so you have to help Ostap with determining the winner.

# Input
# The input is a single integer n (1 ≤ n ≤ 50).
#   Output
# If “black” team wins output “black”, otherwise output “grimy”.

# Samples
# input
# 1
# output
# grimy
#
# input
# 4
# output
# black



