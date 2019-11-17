=begin
Write a method that takes a sentence string as input,
and returns the same string with any sequence of the words
 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
 converted to a string of digits.
=end
=begin
  Input: Sentence String
  Output: String with sequence of the words converted to a string of digits.

  Explicit Rules:
    - Returns the same string with any sequence of the words converted to a
    string of digits.
    - Numbers go from 1 to 9.

  Implicit Rules:
    - Replace all sentence strings with a number string.

  Data Structure:
    - strings
    - Arrays
    - Hashes

  Mental Model:
    Write a method that takes a sentence string and converts each word string to a number.

  Algorithm:
    Given a sentence string: sentence
      - Initialize a hash constant: WORD_TO_DIGIT
      - Initialize an empty array: outcome
      - Split the sentence into words (String#split(' ')), iterate (Array#each):
        - If the word is included in the WORD_TO_DIGIT keys:
          - Append the value at WORD_TO_DIGIT[word] to outcome
        - Otherwise:
          - Append the word to outcome array.
      - Join the outcome array using Array#join(' ')
=end

WORD_TO_DIGIT = { 'one' => '1', 'two' => '2', 'three' => '3',
                  'four' => '4', 'five' => '5', 'six' => '6',
                  'seven' => '7', 'eight' => '8', 'nine' => '9' }

def word_to_digit(words)
  WORD_TO_DIGIT.keys.each do |word|
    words.gsub!(/\b#{word}\b/, WORD_TO_DIGIT[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

#Time: 19 Minutes
