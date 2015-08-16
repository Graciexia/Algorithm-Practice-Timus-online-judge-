lock1 = gets.to_i
lock2 = gets.to_i
if lock1 % 2 == 0 || lock2 % 2 == 1
  puts "yes"
else
  puts "no"
end


# Den has two four-digit combination locks for protecting his bicycle from thieves. Every evening he arms the bicycle
# antitheft alarm and fastens the bicycle to a special stand with one of the locks. Den never uses the same lock two
# evenings in a row. One night a thief tried to open the lock using the code 0000. The alarm went off and the thief
# hurried away. The next night the thief decided to try the code 0001, then 0002, and so on in ascending order of the
# number.Den never changes the codes of his locks. On the night when the thief came for the first time the bicycle
# was fastened with the first lock.

# input The first line contains the combination that opens the first lock and the second line contains the
# combination that opens the second lock. Both combinations are strings consisting of four digits from 0 to 9.

# output  “yes” if the thief will open the lock sooner or later and “no” otherwise.

# Samples
# input	output
# 0001
# 0000
# no
# 0002
# 0001
# yes