# PSEUDOCODE

# My program will ask the user for:
# 1. Loan_amount 
# 2. Annual_percentage_rate 
# 3. Loan_duration

# This will be processed using this formula:

# monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate )**(-loan_duration_months)))

# It will output
# 1. The monthly interest rate 
# 2. Loan_duration_months 
# 3. How much the monthly payment is.

# PSEUDOCODE END #

require "rubocop"

# METHODS #

def prompt(message)
	puts ("=> #{message}")
end

def total_months_calculator (years, months)
	years = years.to_i * 12 
	months =  months.to_i
	result = years + months
	result
end

def monthly_payment_calculator (loan, percentage, duration)
	monthly_payment = loan * (percentage / (1 - (1 + percentage )**(-duration)))
	monthly_payment
end

def monthly_interest_calculator(annual_rate)
	percentage = annual_rate/100
	monthly_rate = percentage/12 
	monthly_rate
end

 # METHODS END #

 # VARIABLES DEFINED OUTSIDE METHODS #

loan_amount = ''
annual_percentage_interest = ''
loan_duration_years = ''
loan_duration_months = ''

# VARIABLES DEFINED OUTSIDE METHODS END #

# INPUT # 

loop do
	prompt ("Welcome to your car loan calculator! Please enter the amount of your loan:")
	loan_amount = gets.chomp.to_i

	prompt ("and at what annual percentage of interest did you get that?")
	annual_percentage_interest = gets.chomp.to_f

	prompt ("ooooooky dokey -  last question, how many years/months do you have this loan for? (eg: 3/5 for 3 years and five months)")
	loan_duration = gets.chomp
	loan_duration_years = loan_duration[0,1].to_i
	loan_duration_months = loan_duration[2,1].to_i

	prompt ("super, so that's #{loan_amount} pounds at #{annual_percentage_interest}% for #{loan_duration_years} years and #{loan_duration_months} months. Is that all correct? (enter 'y' to continue)")
	yes_or_no = gets.chomp.downcase
	if yes_or_no == 'y'
		break
	else
		prompt "well let's try again then, shall we."
	end
end

# INPUT END # 

monthly_percentage_interest = monthly_interest_calculator(annual_percentage_interest)
total_months = total_months_calculator(loan_duration_years, loan_duration_months)
monthly_bill = monthly_payment_calculator(loan_amount, monthly_percentage_interest, total_months)

# OUTPUT # 

puts "the total months of your loan is #{total_months}"
puts "Your monthly bill will be £#{'%.2f' % monthly_bill}"

# OUTPUT END #