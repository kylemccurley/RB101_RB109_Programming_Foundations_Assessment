=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an
odd integer that is supplied as an argument to the method.
You may assume that the argument will always be an odd integer.
=end
=begin
  Input: Odd integer
  Output: 4-Pointed Diamond

  Explicit Rules/Requirements:
    - You may assume that the argument will always be an odd integer

  Implicit Rules:
    - Establish a ratio between the rows of the diamond and the number of stars in each row.
    - Per a second solution:
      - Try to use a counter and a basic looping structure.

  Data Structure:
    - strings
    - Arrays
    - integers

  Mental Model:
    Write a method that takes an odd integer as an argument, and
    returns a 4-pointed diamond. You may assume that the integer may be odd.

  Algorithm: Given an odd integer: n
    - Initialize a local variable: counter
      - Set to 1
    - Initialize a local variable: maximum_distance.
      - Set to be (n - 1) / 2
    - Initialize a local variable: bottom_diamond?
      - Set to false
    - Enter into a loop:
      - Initialize a local variable: stars.
        - Set to '*' * counter
      - Print stars.
        - Center using String#center.
      - If the counter is >= maximum_distance
        - Set bottom_diamond? to true
      - If bottom_diamond? is == false:
        - Iterate the counter up by 2.
      - Otherwise:
        - Iterate counter down by 2.
=end

def diamond(n)
  counter = 1
  maximum_distance = (n - 1) / 2
  bottom_diamond = false

  loop do
    bottom_diamond = true  if counter >= n
    stars = '*' * counter

    puts stars.center(n)

    if bottom_diamond == false
      counter += 2
    else
      counter -= 2
    end

    break if counter < 1
  end
end

diamond(1)
diamond(3)
diamond(9)
