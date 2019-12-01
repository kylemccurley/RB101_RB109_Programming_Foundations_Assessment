=begin
Write a method that takes a sentence string as input,
and returns the same string with any sequence of
the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
=end
=begin
  Input: Sentence string
  Output: Same string with words converted to digit-strings

  Explicit Requirements/Rules:
    - Returns the same string with strings converted to digits

  Implicit Rules:
    - Will need to account for punctuation in words

  Data Structure:
    - Arrays
    - strings

  Mental Model:
    Wrtie a method that converts all word-based numbers and converts them to
    strings

  Algorithm: Given a string: sentence
    - Initialize an array constant: DIGITS
      - Set each word to be from '1' to '9'
    - Split the sentence string into individual elements (String#split)
      - Store as local variable: words
    - Iterate through each elements of words: word
      - Select all elements of word that are between 'a' and 'z'
        - Store as a local variable: chars
      - If chars is included in DIGITS array
        - Initialize a local variable: digit
          - Set to be the index of chars for DIGITS + 1
             - Converted to a string
          - Plus the difference between chars deleted from word.
      - Otherwise
        - Return the word in words
      - Store the return value of the iteration in a local variable.
        - Converted_words
    - Return converted_words joined using (Array#join(' '))
=end

DIGITS = %w(one two three four five six seven eight nine)

def word_to_digit(sentence)
  converted_words = sentence.split(' ').map do |word|
                      chars = word.chars.select { |char| ('a'..'z').to_a.include?(char.downcase) }.join
                      if DIGITS.include?(chars)
                        (DIGITS.index(chars.downcase) + 1).to_s + word.delete(chars)
                      else
                        word
                      end
                    end
  converted_words.join(' ')
end

#Time: 13 Minutes, 12 Seconds

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
