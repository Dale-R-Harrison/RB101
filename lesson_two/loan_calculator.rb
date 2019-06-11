
require 'bigdecimal'
require 'bigdecimal/util'

def calculatate_monthly_payment(amount, interest, total_months)
  total_months -= total_months * 2
  amount * (interest / (1 - (1 + interest)**total_months))
end

def monthly_interest(apr)
  (apr / 100) / 12
end

def loan_duration(years)
  years * 12
end

def prompt(message)
  puts "=> #{message}"
end

def valid_input(input)
  input.to_f > 0 && input != '' 
end

system("clear")

loop do
  prompt "Welcome to the Monthly Loan Payment Calculator."

  prompt "Let's get started. First, what is the amount of your loan?"
  amount = ''

  loop do
    amount = gets.chomp
    if valid_input(amount)
      amount = amount.to_f.to_d
      break
    else
      prompt "Sorry, amount of loan must be a positive number. Please re-enter."
    end
  end

  prompt "Thank you! Next, what is the APR of your loan?"
  prompt "Enter as only a number. Example: If your APR is 5%, enter 5)"
  interest = ''

  loop do
    interest = gets.chomp
    if valid_input(interest)
      interest = monthly_interest(interest.to_f.to_d)
      break
    else
      prompt "You must have an APR of more than 0%. Please try again."
    end
  end

  prompt "Finally, what is the loan duration in years?"
  total_months = ''

  loop do
    years = gets.chomp
    if valid_input(years)
      total_months = loan_duration(years.to_f.to_d)
      break
    else
      prompt "Most enter a positive number of years. Please try again."
    end
  end

  prompt "Thank you! Calculating now!"
  monthly_payment = calculatate_monthly_payment(amount, interest, total_months)
  monthly_payment = monthly_payment.to_f.round(2)

  prompt "Your total payment payment each month will be $#{monthly_payment}."

  prompt "Would you like to calculate another loan? If so, enter'Y'."
  again = gets.chomp.downcase

  break unless again.downcase.start_with?('y')

  system("clear")

end

 prompt "Thank you for using MOnthly Loan Payment Calculator. Goodbye!"
