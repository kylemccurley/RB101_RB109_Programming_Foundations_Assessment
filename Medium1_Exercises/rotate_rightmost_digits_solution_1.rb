=begin
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end
=begin
  Input: Number, n digits
  Output: Rotated number

  Explicit Requirements:
    - You may assume that n is always a positive Integer
    - You may use the rotate_array method from the previous exercise
    - Rotating just 1 digit results in the original number being returned.

  Implicit Rules:
    - Convert number into a type that can compare digits
    - Return a new number

  Data Structure:
    - Integer
    - Arrays
    - Strings

  Algorithm:
    Given a digit and n numbers: number, n
      - Convert the number into a string, call String#chars
       - Number_Chars
      - Pass in the array of [-n to -1] to rotate_array.
        - Assign to a local variable.
      - Join the array (String) and convert to an integer (String#to_i).
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  num_chars = number.to_s.chars
  num_chars[-n..-1] = rotate_array(num_chars[-n..-1])
  num_chars.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

#Time: 13 Minutes
