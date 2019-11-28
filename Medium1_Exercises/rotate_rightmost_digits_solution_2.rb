=begin
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end
=begin
  Input: 2x Integers (Number, Digits)
  Output: 

  Explicit Rules:
    - You may assume that n is always a positive number
    - You may use the rotate_array method
  
  Data Structure:
    - Strings
    - Arrays
    - Integers
  
  Mental Model:
    Write a method that takes 2 integers, number and digits, and 
    returns a new number with the n-th most digits rotated.

  Algorithm:
    Given 2x Integers: number, digits
      - Initialize a local variable: num
        - Set as number
      - Bring 10 to the power of digits.
        - Store as a local variable: place
      - Pass the digits of num % place to rotate_array
        - Converted into a string
          - Store as a local variable: rotated_digits
      - Add rotated_digits to:
        - num / place
          - Converted to a string
            - Store as a local variable: outcome_chars
      - Return outcome_chars:
        - Converted to an integer
=end

def rotate_array(arr)
  arr[1..-1] + arr[0]
end

def rotate_rightmost_digits(number, digits)
  num = number
  places = 10**digits
  rotated_digits = rotate_array((num % places).to_s)
  outcome_chars = (num / places).to_s + rotated_digits
  p outcome_chars.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

#Time: 16 Minutes, 50 Seconds