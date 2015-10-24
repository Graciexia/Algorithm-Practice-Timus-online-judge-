message = gets.strip.split("")
output = []
message.each do |letter|
  if letter != output[-1]
    output << letter
  else
    output.pop
  end
end
print output.join("")



# too slow
# while true
#   identical={}
#   (0..message.size-1).each do |n|
#     if message[n] == message[n + 1]
#       identical[n]= true
#       identical[n + 1]= true
#     end
#   end
#   output = ""
#   if identical != {}
#     (0..message.size-1).each do |n|
#       if identical[n] == nil
#         output << message[n].to_s
#       elsif identical[n] != nil &&
#         identical[n+1] != nil &&
#         identical[n+2] != nil &&
#         identical[n+3] == nil
#         output << message[n+2].to_s
#       end
#     end
#     message = output
#   else
#     break
#   end
# end
# print message



# 1654. Cipher Message Time limit: 1.0 second Memory limit: 64 MB Müller tried to catch Stierlitz red-handed many
# times, but always failed because Stierlitz could ever find some excuse. Once Stierlitz was looking through his email
# messages. At that moment, Müller entered secretly and watched a meaningless sequence of symbols appear on the screen
# . “A cipher message,” Müller thought. “UTF-8,” Stierlitz thought. It is known that Stierlitz ciphers messages by the
# following method. He deletes all spaces and punctuation marks. He replaces all successive identical letters by one
# such letter. He inserts two identical letters at an arbitrary place many times. Try to restore a message as it was
# after the second step. For that, remove from the message all pairs of identical letters inserted at the third step.

# Input The only input line contains a message ciphered by Stierlitz. The message consists of lowercase English
# letters and its length is at most 200000.
# Output Output the restored message.
#
# Sample input
# wwstdaadierfflitzzz
# output
# stierlitz
