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
    - Initialize an empty array: outcome
    - Iterate through each element of arr with index: element, index
      - Append the element to outcome if the index is above 0
    - Append the element at index 0 to outcome
=end

def rotate_array(arr)
  outcome = []
  arr.each_with_index { |element, index| outcome << element if index > 0 }
  outcome << arr[0]
  outcome
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
