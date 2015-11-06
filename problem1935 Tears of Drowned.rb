skins = gets.to_i
sheets = gets.split(" ").map{|sheet| sheet.to_i}.sort
puts (sheets[-1] + sheets.reduce(:+))


# Wei's original version
# skins = gets.to_i
# sheets = gets.split(" ").map{|sheet| sheet.to_i}
# book_left = []
# book_right = []
# sheets.sort.each_with_index do |sheet,index|
#   if index % 2 == 0
#     book_left << sheet
#   else
#     book_right << sheet
#   end
# end
# book_right.reverse.each do |sheet|
#   book_left << sheet
# end
# total_sheets = book_left[0] + book_left[-1]
# book_left[0..-2].each_with_index do |sheet,index|
#   if book_left[index+1] - sheet > 0
#     adder = book_left[index+1] - sheet
#   else
#     adder = 0
#   end
#   total_sheets += sheet + adder
# end
# puts total_sheets




# 1935. Tears of Drowned
# Time limit: 1.0 second Memory limit: 64 MB
# Old Captain Jack Sparrow’s friend Tia Dalma, the
# fortuneteller and prophetess, often makes potions. She has an outstanding collection of the rarest ingredients such
# as rat tails, fingers of drowned, tears of virgins and so on. And all these ingredients require special care.
# Recently Tia Dalma received some good skins of bats as a payment, and now she wants to dry them. To dry ingredients
# fortuneteller usually uses specially prepared books as the magical properties of the skins could be lost during
# prolonged contact with other objects. Tia Dalma knows how many sheets should be on both sides of the skin to save
# it unspoiled. For a i-th skin that number is ai, that is, the distance from it to the neighboring skins and the
# book cover can’t be less than ai sheets. Help a fortuneteller determine the minimum number of sheets that should be
# in the book to save rare ingredients from damage.

# Input The first line contains integer n  that is the number of skins (1 ≤ n ≤ 100). The second line contains n
# integers ai (1 ≤ ai ≤ 100). Output Output the minimal required number of sheets in the book.
# Sample input
# 3
# 5 10 3
# output
# 28
