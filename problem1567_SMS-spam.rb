# soulution O(n)
myhash = Hash.new(0)
%w(a d g j m p s v y . _).each {|letter| myhash[letter] = 1}
%w(b e h k n q t w z ,).each {|letter| myhash[letter] = 2}
%w(c f i l o r u x !).each {|letter| myhash[letter] = 3}
sum = 0

gets.gsub("\n", "").gsub(" ", "_").split("").each do |letter|
  sum += myhash[letter]
end

puts sum



# original soulution
# input = gets.gsub("\n", "").gsub(" ", "_").split("")
#
# arrs = []
# arrs[0] = %w(a d g j m p s v y . _)
# arrs[1] = %w(b e h k n q t w z ,)
# arrs[2] = %w(c f i l o r u x !)
#
# sum = 0
#
# counts = Hash.new(0)
# input.each do |element|
#   counts[element] += 1
# end
#
# arrs.each_with_index do |arr, index|
#   tab = input & arr
#   tab.each do |letter|
#     sum += counts[letter] * (index+1)
#   end
# end
#
# puts sum




# 1567. SMS-spam Time limit: 1.0 second Memory limit: 64 MB
# Petr, a student, decided to start his own business. He
# offers SMS advertising services to the business owners renting offices in the newly built “Prisma” tower. If an
# office owner wants to use the service, he devises a slogan and Petr texts it from his personal phone to thousands of
# Ekaterinburg citizens (he already bought the pirated list of mobile phone numbers). The cost of each slogan sent is
# a sum of costs of each character typed. Cost of an individual character is determined according to a very simple
# scheme: each tap at the phone's keyboard costs 1 rouble. Petr's phone doesn't support sophisticated text input
# technologies, such as T9, and only the english alphabet can be used.
# 1 abc	2 def	3 ghi
# 4 jkl	5 mno	6 pqr
# 7 stu	8 vwx	9 yz
#       0 .,!	# _

# The “_” character in the table denotes whitespace. If you want to, for example, type “a”, you need to press the “1”
# button once. To type “k”, you press “4” twice. To type “!”, press “0” three times. Petr has to apply this simple
# algorithm to calculate the cost of every slogan he sends. However, Petr is a very busy man (and, as a matter of
# fact, doesn't bother to learn arithmetics, because he's a Philosophy student). You just have to help Petr, you are
# his best friend after all.
# Input The single line of input contains the slogan. Slogan consists of words, spaces,
# commas, full stops and exclamation marks. All the words consist of lowercase english letters. Slogan can't be longer
# than 1000 characters.
# Output Output a single number representing the cost of the given slogan, according to Petr's
# pricing.
# Sample
# input
# pokupaite gvozdi tolko v kompanii gvozdederov i tovarischi!
# output
# 114
