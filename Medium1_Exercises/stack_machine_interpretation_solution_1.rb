=begin
All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument.
 Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.
=end
=begin
  Input: String of Operations
  Output: Integer (Stack Output)

  Explicit Rules:
    - You should initialize the register to 0
    - All operations are integer operations
    - May assume all programs are correct programs
  
  Implicit Requirements:
    - Will need to store values in register if there isn't a specified argument
  
  Data Structure:
    - Strings
    - Integers
    - Arrays
  
  Mental Model:
    Write a method that takes a string as an argument
    and returns an integer based on the outcome of the stack operations.
  
  Algorithm: Given a string of operations: operations
    - Initialize a local variable: stack
      - Set as an empty array
    - Initialize a local variable: register
      - Set to 0
    - Split operations into an array, iterate: |token|
      - If the token is 'PUSH':
        - Append the register to the stack
      - If the token is ADD:
        - Pop value from stack (Array#pop), add it to the register
      - If the token is SUB:
        - Pop the value from stack (Array#pop), subtract from register
      - If the token is MULT
        - Pop the value from stack (Array#pop), subtract from register
      - If the token is DIV
        - Pop the value from stack (Array#pop), divide from register
      - If the token is MOD
        - Pop value from stack (Array#pop), perform modulo and apply to register (register %= stack.pop)
      - If the token is POP:
        - Set the register as the popped value from stack
      - If the token is PRINT:
        - Pass the register value into Kernel#puts
      - Otherwise:
        - Set the token to the register
          - Convert the token to an integer
=end

def minilang(operations)
  stack = []
  register = 0
  operations.split(' ').each do |op|
    if op == 'PUSH'
      stack.push(op.to_i)
    elsif op == 'ADD'
      register += stack.pop
    elsif op == 'SUB'
      register -= stack.pop
    elsif op == 'MULT'
      register *= stack.pop
    elsif op == 'DIV'
      register /= stack.pop
    elsif op == 'MOD'
      register %= stack.pop
    elsif op == 'POP'
      register = stack.pop
    else
      register = op.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)