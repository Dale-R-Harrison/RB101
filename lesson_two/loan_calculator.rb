
require 'bigdecimal'
require 'bigdecimal/util'
require 'pry'

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

def retrieve_loan_amount
  prompt "Let's get started. First, what is the amount of your loan?"
  amount = ''

  loop do
    amount = gets.chomp
    if valid_input(amount)
      break
    else
      prompt "Sorry, amount of loan must be a positive number. Please re-enter."
    end
  end
  amount.to_f.to_d
end

def retrieve_apr
  prompt "Thank you! Next, what is the APR of your loan?"
  prompt "Enter as only a number. Example: If your APR is 5%, enter 5)"
  interest = ''

  loop do
    interest = gets.chomp
    if valid_input(interest)
      break
    else
      prompt "You must have an APR of more than 0%. Please try again."
    end
  end
  interest = monthly_interest(interest.to_f.to_d)
end

def retrieve_duration
  prompt "Finally, what is the loan duration in years?"
  total_months = ''
  years = ''
  loop do
    years = gets.chomp
    if valid_input(years)
      break
    else
      prompt "Most enter a positive number of years. Please try again."
    end
  end
  total_months = loan_duration(years.to_f.to_d)
end

def valid_input(input)
  input.to_f > 0 && input != ''
end

def new_calculation?
  yes = ["yes", "y"] 
  no = ["no", "n"]

  prompt "Would you like to calculate another loan? Enter yes or no."
  loop do
    again = gets.chomp.downcase
    if yes.include?(again)
      return true
    elsif no.include?(again)
      return false
    else
      prompt "I'm sorry, I don't understand. Please enter yes or no."
    end
  end
end


system("clear")

loop do
  prompt "Welcome to the Monthly Loan Payment Calculator."

  amount = retrieve_loan_amount
  interest = retrieve_apr
  total_months = retrieve_duration
  
  prompt "Thank you! Calculating now!"
  monthly_payment = calculatate_monthly_payment(amount, interest, total_months)
  monthly_payment = monthly_payment.to_f.round(2)

  prompt "Your total payment each month will be $#{monthly_payment}."

  break unless new_calculation?

  system("clear")
end

prompt "Thank you for using MOnthly Loan Payment Calculator. Goodbye!"
