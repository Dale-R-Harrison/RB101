
require 'pry'

def is_int?(string)
  string == string.to_i.to_s
end

def minilang(string)
  register = 0
  stack = []
  string.split.each do |word|
    if is_int?(word)
      register = word.to_i
    else
      case word
      when 'PUSH'
        stack << register
      when 'ADD'
        register += stack.pop
      when 'SUB'
        register -= stack.pop
      when 'MULT'
        register *= stack.pop
      when 'DIV'
        register = register / stack.pop
      when 'MOD'
        register = register % stack.pop
      when 'POP'
        register = stack.pop
      when 'PRINT'
        puts register
      end
    end
  end
end

minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
        