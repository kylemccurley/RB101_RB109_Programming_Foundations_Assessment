=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an
odd integer that is supplied as an argument to the method.
You may assume that the argument will always be an odd integer.
=end
=begin
  Input: Odd Integer
  Output: 4-Pointed Diamond

  Explicit Rules:
    - You may assume that the argument will always be an odd integer
    - Displays a 4-pointed diamond in an n x n grid.

  Implicit Rules:
    - N determines the dimensions of the grid

  Data Structure:
    - Integers
    - Strings

  Mental Model:
    Write a method that takes an n integer and Returns
    a 4-pointed diamond in a nxn grid. The input
    integer will always be an odd integer.

  Algorithm:
    Given an integer: n

      Print_Row Method:
        Given the grid_size and distance_from_center
===================================================
          - Calculate the number of stars:
            - Substract 2 from the grid_size and multiply by distnace_from_center
          - Initialize a local variable: stars, as a string
            - Multiply '*' by the number of stars in grid
          - Print the stars string in the center of a string the size of grid_size

      Grid_Size Method:
===================================================
       - Calculate the maximum distance from center: max_distance
         - Subtract 1 from the grid_size and divide by 2
       - Iterate from the max_distance down to 0:
         - Pass these arguments into print_row:
           - grid_size
           - distance
       - Iterate from 1 up to the maximum_distance:
         - Pass in these following arguments into print_row:
           - grid_size
           - distance
=end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(9)
diamond(3)
diamond(1)

#Time: 13 Minutes
