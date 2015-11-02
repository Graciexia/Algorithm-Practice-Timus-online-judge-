n, k = gets.strip.split(" ").map{|i| i.to_i}
finished_computer = 1
hour = 0
while finished_computer < n
  hour += 1
  square = 2 ** (hour - 1)
  if k <= square
    finished_computer += k
    hour += ((n - finished_computer) / k.to_f).ceil
    break
  else
    finished_computer += square
  end
end
puts hour


# 1131. Copying Time limit: 0.25 second Memory limit: 64 MB A new educating program was received by the kindergarten.
# Of course, children have discovered it immediately and want to play with it as soon as possible. In order to let
# them do it the program has to be copied to all the N computers that the kindergarten had bought just before the
# default of 1998. At the moment the program is installed only on one computer. Other computers do not have floppy
# drives and are not connected with a local network. The only way to transfer information from one computer to
# another is to copy it using a null-modem cable (a cable that connects two computers directly). So, if the program
# is installed on a computer, it can be copied to some other (but only one!) computer within an hour. There are only
# K null-modem cables in the kindergarten. Your task is to estimate the minimal time necessary for copying the
# program to all the computers in the kindergarten.

# Input
# The only input line contains two integers separated with a space: N and K (1 ≤ N ≤ 109; 1 ≤ K ≤ 109).
#   Output
# You are to output the minimal time (in hours) necessary for copying of the program to all the computer
# Sample
# input
# 8 3
# output
# 4
