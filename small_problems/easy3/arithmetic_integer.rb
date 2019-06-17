
def sum(num1, num2)
  num1 + num2
end

def product(num1, num2)
  num1 * num2
end

def quotient(num1, num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def exponent(num1, num2)
  num1 ** num2
end

def difference(num1, num2)
  num1 - num2
end

puts "Enter the first number: "
first_number = gets.chomp.to_i

puts "Enter the second number: "
second_number = gets.chomp.to_i

puts "#{first_number} + #{second_number} = #{sum(first_number, second_number)}"
puts "#{first_number} - #{second_number} = #{difference(first_number, second_number)}"
puts "#{first_number} * #{second_number} = #{product(first_number, second_number)}"
puts "#{first_number} / #{second_number} = #{quotient(first_number, second_number)}"
puts "#{first_number} % #{second_number} = #{remainder(first_number, second_number)}"
puts "#{first_number} ** #{second_number} = #{exponent(first_number, second_number)}"

