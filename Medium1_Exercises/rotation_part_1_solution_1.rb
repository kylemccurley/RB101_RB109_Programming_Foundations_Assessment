=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.
=end
=begin
  Input: Array
  Output: New Rotated Array (First element moved to the end)

  Explicit Rules:
    - Do not use the Array#rotate or Array#rotate! method
  
  Data Structures:
    - Arrays
    - Strings
    - Integers
  
  Algorithm:
    Given an array of elements: arr
      - Initialize an empty array: outcome
      - Iterate through each element and index of arr: Array#each_with_index
        - Unless the index is 0
          - Append the element to outcome array
      - Append the element at index 0
      - Return the outcome array
=end

def rotate_array(arr)
  outcome = []
  arr.each_with_index { |el, idx| outcome << el unless idx == 0 }
  outcome << arr[0]
  outcome
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

#Time: 6 minutes, 31 seconds