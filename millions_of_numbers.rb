nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]

def find_matches(nums_1, nums_2, nums_3)
  arr = nums_1 + nums_2 + nums_3
  hash = Hash.new(0)
  arr.each do |num|
    hash[num] += 1
  end
  hash.filter_map do |key, value|
    key if value == 3
  end
end
puts find_matches(nums_1, nums_2, nums_3)
#########################################
# Prompt ☟
# Instructions: You are given three arrays of equal size. Each array has 1 million RANDOM integer values.
# Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.
# Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.
# Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.
# Small Scale Example Below
#     #Ruby
#     nums_1 = [1, 2, 4, 5, 8]
#     nums_2 = [2, 3, 5, 7, 9]
#     nums_3 = [1, 2, 5, 8, 9]
#     find_matches(nums_1, nums_2, nums_3)
#     => [2, 5]
#########################################
############### Pseudocode
#    #why are the first two points important?
#    return an array with any duplicates
#    iterate through the first two for duplicates,
#    nums_1 = [1, 2, 4, 5, 8]
#    nums_2 = [2, 3, 5, 7, 9]
#    return duplicates
#    [2, 5]
#    then iterate the first and third
#    nums_1 = [1, 2, 4, 5, 8]
#    nums_3 = [1, 2, 5, 8, 9]
#    return duplicates
#    [1, 2, 5, 8]
#    then iterate through last two
#    nums_2 = [2, 3, 5, 7, 9]
#    nums_3 = [1, 2, 5, 8, 9]
#    return duplicates
#    [2, 5, 9]
#    then itetrate through

# iterate first two arrays to create a new array of duplicates
# then compare the new array to the next and so on for duplicates

#   def find_matches(nums_1, nums_2, nums_3)
#     arr = []
#     nums_1.each do |num_1|
#       nums_2.each do |num_2|
#         nums_3.each do |num_3|
  ## Big O: n3 or O(n)
#         if num_1 == num_2 && num_1 == num_3
#           arr << num_1
#         end
#       end
#     end
#     arr.uniq
#   end
# end
