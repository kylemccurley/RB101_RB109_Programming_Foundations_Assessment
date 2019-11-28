=begin
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end
=begin
  Input: 2x Integers
  Output: New Rotated Number

  Explicit Rules:
    - You may assume that n is always a positive integer
    - You may use the rotate_array method from previous exercise
  
  Data Structure:
    - Arrays
    - Integers
    - Strings

  Mental Model:
    Write a method that takes 2 integers and returns a new number 
    with the n-most digits rotated.
  
  Algorithm: Given 2x integers: number, digits
    - Convert number to a string:
      - Store as a local variable: num_chars
    - Pass the digits from -digits to -1:
      - To rotate_array method
        - Store as local variable: rotated_digits
    - Add characters from 0 to (digits + 1)
      - Add to rotated_digits local variable
    - Convert rotated_digits to an integer (String#to_i)
=end

def rotate_array(string)
  string[1..-1] + string[0]
end

def rotate_rightmost_digits(number, digits)
  num_chars = number.to_s
  rotated_chars =  num_chars[0..-(digits + 1)] + rotate_array(num_chars[-digits..-1])
  rotated_chars.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

#Time: 12 Minutes, 42 Seconds