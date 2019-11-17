def fibonacci(number)
  counter = 2
  array = [1, 1]

  loop do
    array[0], array[1] = array[1], array.sum
    counter += 1
    break if counter == number
  end

  p array[1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
