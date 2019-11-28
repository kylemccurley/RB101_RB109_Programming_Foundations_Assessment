=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.
=end
=begin
Input: array
Output: New Rotated Array (First number moved to the end)

Explicit Requirements:
  - Do not use the method Array#rotate or Array#rotate! for your implementation.
  - The original array should not be modified
  - Move the first element to the end of the array

Data Structure;
  - Arrays
  - Integers
  - Strings

Mental Model:
  Write a method that takes an array of elements (Integers or Strings), and returns
  a new array with the first element moved to the end.

Algorithm:
  Given an array: arr
    - Reference elements from index 1 to -1
    - Reference elements from index 0
=end

def rotate_array(arr)
  arr[1..-1] + arr[0]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

#Time: 3 Minutes
