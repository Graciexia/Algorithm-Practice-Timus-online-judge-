def sqrt (input)
# input = gets.split("")
input.split("").each do |letter|
  if input.count(letter) == 1
    puts letter
    break
  end
end


# start_s = Time.now.to_f
# n = sqrt(aaaaahihhhhijiinnlsssssleeeeeeeeeekkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkahibced)
# print "processing time milliseconds: #{(Time.now.to_f - start_s)*1000.0}\n"
