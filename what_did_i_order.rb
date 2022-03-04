@menu = {
  'veggie sandwich' => 6.85,
  'extra veggies' => 2.20,
  'chicken sandwich' => 7.85,
  'extra chicken' => 3.20,
  'cheese' => 1.25,
  'chips' => 1.40,
  'nachos' => 3.45,
  'soda' => 2.05,
}
receipt_total = 4.85

def receipt_items(receipt_total)
  items = []
  @menu.each do |item, price|
    remainder = (receipt_total - price).round(2)
    if remainder == 0
      return [item]
    elsif remainder > 0
      found_items = receipt_items(remainder)
      if found_items
        items << item
        items += found_items
        return items
      end
    end
  end
  # if the remainder (line 64) is negative
  return false
end

puts receipt_items(receipt_total)
#########################################
# What Did I Order?
# Instructions:
# In this challenge you are given a menu and a list of receipt values.
# Write a method/function to find the first combination of food that adds up to the receipt total.
# Return a print out of only one combination for that receipt, and move on to the next receipt.
# How the print out looks is up to you, but here are some examples:
#     #Example 1
#     4.85:
#     3 items, extra veggies, chips, cheese
#     #Example 2
#     13.75:
#     3 items, {'veggie sandwich': 1, 'nachos': 2}
# Constraints:
# you must use 100% of the receipt value, we don’t want any money left over
# you can order any quantity of any menu item
# none of the receipt values are “tricks”, they all have answers
# Tip: Doing subtraction and addition on money values CAN lead to “floating point precision” problems.
# For example, 4.85 - 1.25 might give you 3.599999996. Round values to two decimal places to make sure you’re finding answers.
# Ruby Starter Code ☟
# menu = {
#   'veggie sandwich' => 6.85,
#   'extra veggies' => 2.20,
#   'chicken sandwich' => 7.85,
#   'extra chicken' => 3.20,
#   'cheese' => 1.25,
#   'chips' => 1.40,
#   'nachos' => 3.45,
#   'soda' => 2.05,
# }
# receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]
#########################################
############### Pseudocode
  # menu = {
  #   'veggie sandwich' => 6.85,
  #   'extra veggies' => 2.20,
  #   'chicken sandwich' => 7.85,
  #   'extra chicken' => 3.20,
  #   'cheese' => 1.25,
  #   'chips' => 1.40,
  #   'nachos' => 3.45,
  #   'soda' => 2.05,
  # }.sort_by do |item, price|
  # orders largest to smallest
      #   -1 * price
      # end

#   receipt = 4.85

#   # start with just one receipt and then refactor in the array.
#   def receipt_items(total = 0, receipt, menu)
#     if receipt == total || menu.empty?
#       return total, menu
#     else
#       menu.each do |item, price|
#         if price > receipt
#           menu.shift
#           receipt_items(total, receipt, menu)
#         else
#           if total < receipt
#             total += price
#           else
#             receipt_items(total, receipt, menu)
#           end
#         end
#       end
#     end
#   end
# puts receipt_items(total = 0, receipt, menu)
