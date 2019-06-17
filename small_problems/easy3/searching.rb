
def prompt(message)
  puts "==> #{message}"
end

def retrieve_number
  loop do
    number = gets.chomp
    if validate_number(number)
      number = number.to_i
      return number
    else
      prompt "Please enter a valid number: "
    end
  end
end

def validate_number(number_as_string)
  if number_as_string == number_as_string.to_i.to_s
    true
  else
    false
  end
end

numbers = []

prompt "Enter the first number: "
numbers << retrieve_number

prompt "Enter the second number: "
numbers << retrieve_number

prompt "Enter the third number: "
numbers << retrieve_number

prompt "Enter the fourth number: "
numbers << retrieve_number

prompt "Enter the fifth number: "
numbers << retrieve_number

prompt "Enter the final number: "
search_number = retrieve_number

if numbers.include?(search_number)
  puts " The number #{search_number} appears in #{numbers}."
else
  puts "The number #{search_number} does not appear in #{numbers}"
end
