n = gets.to_i
animals = []
(1..100).each do |a|
  (a+1..100).each do |b|
    if n != 0
      c = (a ** n + b ** n)**(1.0/n)
      if c.to_i == c && c > b
        # we have an answer
        animals << a
        animals << b
        animals << c.to_i
        break
      end
    end
# solution2
    # (b+1..100).each do |c|
    #   an = a**n
    #   bn = b**n
    #   cn = c**n
    #   if cn > an + bn
    #     break
    #   elsif
    #     cn == an + bn
    #     animals << a
    #     animals << b
    #     animals << c
    #     break
    #   end
    # end
    break if animals.size != 0
  end
  break if animals.size != 0
end
if animals.size != 0
  puts "#{animals[0]} #{animals[1]} #{animals[2]}"
else
  puts "-1"
end


# 1349. Farm
# Time limit: 1.0 second Memory limit: 64 MB
# Here is a farm. Here is a farmer that counts how many animal
# live in his farm: a camels, b sheep, c green cockroaches. Occurs that a**n + b**n = c**n. n is given. You are to find all
# the rest.
# Input n (0 ≤ n ≤ 100) Output Three different integers (a, b and c) such that a**n + b**n = c**n, 1 ≤ a, b, c ≤
# 100. If there are several solutions you should output the one where a is minimal. If there are several solutions
# with the minimal a you should output the one with minimal b, and so on. Output −1 if there is no solution.
# Samples
# input
# 0
# output
# -1
# input
# 1
# output
# 1 2 3
