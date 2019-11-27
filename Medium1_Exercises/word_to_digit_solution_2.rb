=begin
Write a method that takes a sentence string as input,
and returns the same string with any sequence of the words
 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
 converted to a string of digits.
=end
=begin
  Input: Sentence String
  Output: Sentence String with sequences of words converted to a string of digtits

  Explicit Rules:
    - Returns the same string with any sequence of the words converted to a string of digtits

  Implicit Rules:
    - Convert the string token to an Integer

  Data Structure:
    - strings
    - Integers
    - Hashes
    - Arrays

  Mental Model:
    Write a method that takes a sentence string as an input, and returns the same
    string with the words as numbers converted to digits.

  Algorithm:
    Given a string: sentence_string
      - Initialize a constant local variable: WORD_TO_DIGIT (Key: String of digit, Value: Integer Value of Digit (As a String. Ex: '1'))
      - Split the sentence string using String#Split
        - Store as a local variable: words
      - Iterate through each instance of words:
        - Replace punctuation marks with empty spaces using String#gsub! (Note: Destructive)
      - Iterate through each element of words (Array#map): word
        - If the word is included in the keys of WORD_TO_DIGIT
          - Replace the word with the value of WORD_TO_DIGIT (Using String#replace)
            - Implicit Return of block
        - Otherwise:
          - Implicit Return of the original word
=end

WORD_TO_DIGIT = { 'one' => '1', 'two' => '2', 'three' => '3',
                   'four' => '4', 'five' => '5', 'six' => '6',
                   'seven' => '7', 'eight' => '8', 'nine' => '9'
                 }

def word_to_digit(sentence)
  words = sentence.split('')
  words.each { |word| word.gsub!(/[[:punct:]]/, '')}

  words.map! do |word|
    if WORD_TO_DIGIT.keys.include?(word)
      word.replace(WORD_TO_DIGIT[word])
    else
      word
    end
  end

  p words.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

#Time: 15 Minutes