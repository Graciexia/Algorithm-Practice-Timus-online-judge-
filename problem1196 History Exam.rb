


# Accepted!! :-D
dates = STDIN.read.split(" ").map{|x|x.to_i}
n = dates[0]
prof_dates = {}
dates[1..n].each do |prof_date|
  prof_dates[prof_date] = 0
end
count = 0
dates[n+2..-1].each do |student_date|
  if prof_dates[student_date] != nil
    count += 1
  end
end
puts count



# too slow :-(
# n = gets.to_i
# date_list = STDIN.read.split(" ")
# date_list = date_list - [date_list[n]]
# dates_indices = []
# date_list.each do |date_value|
#   dates_indices << date_list.index(date_value)
# end
# count = 0
# prof_top_index = n-1
# dates_indices[n..-1].each do |student_date_index|
#   if student_date_index <= prof_top_index
#     count += 1
#   end
# end
#
# puts count



# 1196. History Exam
# Time limit: 1.5 second Memory limit: 64 MB
# Professor of history decided to simplify the
# examination process. At the exam, every student should write a list of historic dates she knows (she should write
# the years only and, of course, must be able to explain what event took place in this or that year). Professor has a
# list of dates that students must know. In order to decide upon the student's mark, Professor counts the number of
# dates in the student's list that are also present in his list. The student gets her mark according to the number of
# coincidences. Your task is to automatize this process. Write a program that would count the number of dates in the
# student's list that also occur in Professor's list. Input The first line contains the number N of dates in
# Professor's list, 1 ≤ N ≤ 15000. The following N lines contain this list, one number per line. Each date is a
# positive integer not exceeding 109. Professor's list is sorted in non-descending order. The following line contains
# the number M of dates in the student's list, 1 ≤ M ≤ 10**6. Then there is the list itself; it is unsorted. The dates
# here satisfy the same restriction. Both in Professor's and in the student's lists dates can appear more than once.
# Output Output the number of dates in the student's that are also contained in Professor's list.
# Sample input
# 2
# 1054
# 1492
# 4
# 1492
# 65536
# 1492
# 100
# output
# 2
