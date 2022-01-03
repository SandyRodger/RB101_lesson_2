	loan_duration_years = 3
	loan_duration_months = 6
	
def total_months_calculator (years, months)
	years = years.to_i * 12 
	months =  months.to_i
	result = years + months
	result
end

total_months = total_months_calculator(loan_duration_years, loan_duration_months)
puts "the total months of your loan is #{total_months}"