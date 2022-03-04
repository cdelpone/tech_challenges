def palindromic_sum
  num = 0
  arr = []
  while arr.length <= 25 do
    num += 1
    inverse_num = (num.to_s).reverse
    sum = (num.to_i + inverse_num.to_i)
    if sum >= 1000 && (sum.to_s).reverse == sum.to_s
      arr << num
    end
  end
  arr
end
puts palindromic_sum
#########################################
# Feedback: more verbal; tried to understand before diving in; asked questions; wrote assumptions; naming what I need to return
#########################################
# Prompt ☟ Palindromic Sum
# Instructions
# A palindrome is any number, word, or phrase that reads the same forward as it does backward.
# In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.
# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000.
# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.
# 567 + 765
# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.
# Bonus: Once you’ve found a working solution, see if you can create a solution without converting the numbers to strings/arrays.
#########################################
############### Pseudocode
#start at 0
#return 25 (of the 47 ex)
#palindrome has to be the sum of two numbers (number plus its inverse)
#summed palindrome greater than 1,000
# checking the palindrome, the first and the last have to equal each other
#checking the numbers equal 1000
#starting at zero, checking that the sum with the inverse is at least 1000

# def palindromic_sum(n = 0)
#   arr = []
#   while arr.length <= 25 do
#     n += 1
#     x = (n.to_s).reverse
#     asd = (n.to_i + x.to_i)
#       if (n.to_i + x.to_i) >= 1000 && (asd.to_s).reverse == asd.to_s
#         arr << n
#       else
#         palindromic_sum(n)
#       end
#   end
# end
# puts palindromic_sum(n = 0)
