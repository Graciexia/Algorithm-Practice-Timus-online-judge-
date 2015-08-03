# 1002. Phone Numbers
# Time limit: 2.0 second
# Memory limit: 64 MB
# In the present world you frequently meet a lot of call numbers and they are going to be longer and longer. You need to remember such a kind of numbers. One method to do it in an easy way is to assign letters to digits as shown in the following picture:
# 1 ij    2 abc   3 def
# 4 gh    5 kl    6 mn
# 7 prs   8 tuv   9 wxy
#         0 oqz

# This way every word or a group of words can be assigned a unique number, so
# you can remember words instead of call numbers. It is evident that it has
# its own charm if it is possible to find some simple relationship between the
# word and the person itself. So you can learn that the call number 941837296
# of a chess playing friend of yours can be read as WHITEPAWN, and the call
# number 2855304 of your favourite teacher is read BULLDOG. Write a program to
# find the shortest sequence of words (i.e. one having the smallest possible
# number of words) which corresponds to a given number and a given list of
# words. The correspondence is described by the picture above.

# Input
# Input contains a series of tests. The first line of each test contains the call
# number, the transcription of which you have to find. The number consists of
# at most 100 digits. The second line contains the total number of the words
# in the dictionary (maximum is 50 000). Each of the remaining lines contains
# one word, which consists of maximally 50 small letters of the English
# alphabet. The total size of the input doesn't exceed 300 KB. The last line
# contains call number −1.

# Output
# Each line of output contains the shortest
# sequence of words which has been found by your program. The words are
# separated by single spaces. If there is no solution to the input data, the
# line contains text “No solution.”. If there are more solutions having the
# minimum number of words, you can choose any single one of them.

# 7325189087
# 5
# it
# your
# reality
# real
# our
# 4294967296
# 5
# it
# your
# reality
# real
# our
# -1

def get_answers(left_part, phone_number, letter_groups, dictionary, answers)
  dictionary.each do |word|
    matched_word = true
    if word.size > phone_number.size
      matched_word = false
    else
      word.split('').each_with_index do |letter, index|
        if ! letter_groups[index].include?(letter)
          # letter not found in letter_group
          matched_word = false
          break
        end
      end # word do
    end
    if matched_word
      if word.size == phone_number.size
        # we got a match, and are at the end of the phone number
        answers.push("#{left_part} #{word}".strip)
      else
        # still more numbers to look at
        get_answers("#{left_part} #{word}", phone_number[word.size..-1], letter_groups[word.size..-1], dictionary, answers)
      end
    end
  end # dictionary do
end # def

mapper = ['oqz','ij','abc','def','gh','kl','mn','prs','tuv','wxy']
# print "#{mapper}\n"

while (phone_number = gets.strip) != "-1"
  word_count = (gets).to_i
  dictionary = []
  (1..word_count).each do
    word = gets
    dictionary << word.strip
  end

  # print "Processing the following input:\n"
  # print "#{phone_number}\n"
  # print "#{word_count}\n"
  # print "#{dictionary}\n\n"

  letter_groups =[]
  phone_number.split('').each do |num|
    letter_groups << mapper[num.to_i]
  end

  answers = []
  left_part = ''
  get_answers(left_part, phone_number, letter_groups, dictionary, answers)
  if answers.any?
    puts answers.min_by {|x| x.length}
  else
    puts "No solution."
  end
end # while more problems
