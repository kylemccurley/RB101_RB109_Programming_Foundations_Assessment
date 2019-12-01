=begin
If you take a number like 735291, and rotate it to the left,
you get 352917. If you now keep the first digit fixed in place,
and rotate the remaining digits, you get 329175.
Keep the first 2 digits fixed in place and rotate again to 321759.
Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final
2 digits to get 321579.
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument,
and returns the maximum rotation of that argument.
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.
=end
=begin
  Input: Integer
  Output: Maximum Rotation for the Integer

  Explicit Rules:
    - Do not have to handle multiple 0s
    - Can use the rotate_right_most_digits

  Data Structure:
    - Arrays
    - Integers
    - Strings

  Mental Model:
    Write a method that takes a number, and returns
    the maxium rotation of that number. The maximum rotation is the
    rotation up to 2 digits.

  Algorithm: Given an integer: num
    - Iterate num.size down to 2 times: pass in as argument: |times|
      - Pass num and iteration number into rotate_rightmost_digits() method.
        - Reassign the value to num
    - Return number
=end

def rotate_array(arr)
  arr[1..-1] + arr[0]
end

def rotate_rightmost_digits(number, digits)
  num_chars = number.to_s
  rotated_chars =  num_chars[0..-(digits + 1)] + rotate_array(num_chars[-digits..-1])
  rotated_chars.to_i
end

def max_rotation(num)
  num.to_s.size.downto(2) { |iteration| num = rotate_rightmost_digits(num, iteration) }
  num
end

p rotate_rightmost_digits(735291, 5)

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

#Time: 12 Minutes, 32 Seconds
