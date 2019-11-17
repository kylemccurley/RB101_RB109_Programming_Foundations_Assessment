=begin
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end
=begin
  Input: Number, n
  Output: New Rotated Number

  Explicit Rules:
    - You may assume that n is always a positive Integer
    - You may use the rotate_array method from the previous exercise
    - Rotating 1 digit results in the original number being returned.

  Data Structure:
    - Integer
    - Strings
    - Arrays

  Mental Model:
    Write a method that takes a number and n digits to be rotated, and returns a
    new number with n digits rotated (n digits passed into rotate_array method)

  Algorithm:
    Given a number and n digits:
      -
=end



def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  num_chars = number.digits.reverse
  rotated_num = num_chars[0..-(n + 1)] + rotate_array(num_chars[-n..-1])
  rotated_num.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

#Time: 19 Minutes
