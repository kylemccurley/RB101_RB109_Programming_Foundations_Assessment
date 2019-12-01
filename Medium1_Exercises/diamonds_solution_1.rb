=begin
  Input: Odd integer
  Output: 4-Pointed Diamond (String)

  Explicit Requirements/Rules:
    - You may assume that the argument will always be an odd integer

  Implicit Requirements:
    - Will need to print diamond based on distance from center.

  Data Structure:
    - Integers   - strings  - Arrays

  Mental Model:
    Write a method that takes an odd integer, and returns a string of a
    4-pointed diamond. You may assume that the argument will always be an odd integer.

  Algorithm: Given an odd integer: n
    - Initialize a local variable: max_distance
      - Set to (n - 1) / 2
    - Iterate from max_distance downto 1: |distance|
      - Initialize a local variable: number_of_stars
        - n - (2 * distance)
      - Print '*' * number_of_stars
        - Center using String#center
    - Print '*' * n
      - Center using String#center
    - Iterate from 1 upto max_distance: |distance|
      - Reassign local variable: number_of_stars
        - n - (2 * distance)
      - Print '*' times number_of_stars
        - Center using String#center
=end

def diamond(n)
  max_distance = (n - 1) / 2
  max_distance.downto(1) do |distance|
    number_of_stars = n - (2 * distance)
    puts ('*' * number_of_stars).center(n)
  end

  puts ('*' * n).center(n)

  1.upto(max_distance) do |distance|
    number_of_stars = n - (2 * distance)
    puts ('*' * number_of_stars).center(n)
  end
end

diamond(1)
diamond(3)
diamond(9)
