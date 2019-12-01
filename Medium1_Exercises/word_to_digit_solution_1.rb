=begin
Write a method that takes a sentence string as input,
 and returns the same string with any sequence of
 the words 'zero', 'one', 'two', 'three', 'four',
 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
=end
=begin
  Input: Sentence String
  Output: Same Sentence string

  Explicit Rules/Requirements:
    - Returns the same string with any sequence of the words converted to digits.

  Implicit Rules:
    - Will need to account for the punctuation in words.

  Data Structure:
    - strings
    - Arrays
    - Hashes

  Mental Model:
    Write a method that takes a sentence string, and returns the same string with the
    string-words converted to digits.

  Algorithm: Given a sentence string: sentence:
    - Split the sentence with spaces using String#Split(' ')
      - Store as a local variable: words
    - Initialize a constant Hash: WORD_TO_DIGIT
    - Iterate through each element of words: |word|
      - If word includes any of the keys in WORD_TO_DIGIT:
        - Delete all letters in word that are the same as WORD_TO_DIGIT key
          - Store as local variable: punctuation
        - Return the word to the block, adding the punctuation
      - Otherwise:
        - Return the original word to block
      - Store Array#map outcome as a local variable.
=end

WORD_TO_DIGIT = { 'one' => '1', 'two' => '2', 'three' => '3',
                   'four' => '4', 'five' => '5', 'six' => '6',
                   'seven' => '7', 'eight' => '8', 'nine' => '9'
                 }

def word_to_digit(sentence)
  words = sentence.split(' ')
  words.map! do |word|
    if WORD_TO_DIGIT.keys.any? { |key| word.include?(key) }
      selected_word = WORD_TO_DIGIT.keys.select { |el| word.include?(el) }.first
      punctuation = word.delete(selected_word)
      WORD_TO_DIGIT[selected_word] + punctuation
    else
      word
    end
  end

  p words.join(' ')
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

#Time: 12 Minutes, 58 Seconds
