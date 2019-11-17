=begin
Write a method that displays a 4-pointed diamond
in an n x n grid, where n is an
odd integer that is supplied as an argument to the method.
You may assume that the argument will always be an odd integer.
=end
=begin
  Explicit Rules:
    - You may assume that the argument will always be an odd Integer
    - n is an odd integer supplied as an argument

  Data Structure:
    - Integers
    - strings

  Mental Model:
    Write a method that takes an odd integer as an argument and
    prints out a 4-pointed star in an nxn grid.

  Algorithm:
    Given an argument: grid_size
      - Iterate through each odd number from 1 to grid_size from smallest to largest:
        - Print the '*' symbol moved to the center.
      - Iterate through each odd number from 1 to grid_size from largest to smallest (Array#reverse):
        - Print the '* symbol moved to the center.
=end

STAR = '*'

def diamond(grid_size)
  for i in (1..grid_size).to_a.keep_if {|x| x.odd?} do
    puts (STAR * i).center(grid_size)
  end

  for i in (1..(grid_size - 2)).to_a.reverse.keep_if {|x| x.odd?} do
    puts (STAR * i).center(grid_size)
  end
end

diamond(1)
diamond(3)
diamond(9)
#Time: 14 Minutes
