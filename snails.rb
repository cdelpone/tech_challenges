  array_matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
  ];

  @new_arr = []

  def snail(array_matrix)
    n = array_matrix.count
    if n == 1
      @new_arr.concat(array_matrix)
    elsif n > 1
      @new_arr.concat(array_matrix.shift)
      @new_arr.concat(array_matrix.map { |arr| arr.pop })
      @new_arr.concat(array_matrix.pop.reverse)
      snail(array_matrix)
    end
  end
  puts snail(array_matrix)
  # => [1, 2, 3, 6, 9, 8, 7, 4, 5]
#########################################
# feedback - talk about what I'm typing. During silence let them know what I'm thinking
# go over assumptions (understanding) and continue to iterate over it, explain changes as they happen
#########################################
# Prompt ☟  snail
# Instructions: Given an n x n array, write a method that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.
# A good way to visualize this is to picture the spiral shell of a snail!
# Example in Ruby
    # array_matrix = [
    #     [1, 2, 3],
    #     [4, 5, 6],
    #     [7, 8, 9]
    # ];
    # snail(array_matrix)
    # => [1, 2, 3, 6, 9, 8, 7, 4, 5

#########################################
############### Pseudocode
 # below is 4 x 4
    # array_matrix = [
    #     [1, 2, 3, 3],
    #     [1, 2, 3, 3],
    #     [1, 2, 3, 3],
    #     [1, 2, 3, 3],
    # ];
#     array_matrix = [
#         [1, 2],
#         [3, 4],
#     ]; => 1, 2, 4, 3
#
# # join all the arrays
#  [1, 2, 3], [4, 5, 6], [7, 8, 9]
# 0 1 2 3 4 5 6 7 8
# # find n to determine the first n elements in the output
# # assume the first will always be the same, or the first nested array
# #to find the next number, n*2 - 1 index position, then again
# always true - need the last element of the shifted array
# pull out last element of the first (or first n - 1 arrays) array, then reverse the last one
