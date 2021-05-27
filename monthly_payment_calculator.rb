def monthly_payment_calculator (loan, percentage, duration)
	monthly_payment = loan * (percentage / (1 - (1 + percentage )**(-duration)))
	monthly_payment
end

loan_amount = 4000  
annual_percentage_interest = 0.04/12
total_months = 42

monthly_bill = monthly_payment_calculator(loan_amount, annual_percentage_interest, total_months)

puts "Your monthly bill will be £#{'%.2f' % monthly_bill}, but it should be 102.22"	