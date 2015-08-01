# $/ = 'END'
# user_input = STDIN.gets.split(" ")[0..-2].reverse
# user_input.each do |i|
#   a = (i.to_i)**(1.0/2)
#   printf("%.4f\n",a)
# end

# since the Juge does not know the 'END', I will try while loop to get the multiple lines user_input

# def multi_gets all_text=""
#   while (text = gets) != "\n"
#     all_text << text
#   end
#   all_text
# end
# multi_gets.split(" ").reverse.each {|i| printf("%.4f\n",(i.to_i)**(1.0/2))}

# using readlines for final version


STDIN.read.split(" ").reverse.each {|i| printf("%.4f\n",(i.to_i)**(1.0/2))}
