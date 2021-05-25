# M = deposit amount
# I = annual interest rate
# N = Years

puts 'How much do you want to save per month?'
deposits = gets.chomp.to_f                   #regular deposit amount

puts 'For how many years?'
number_of_years = gets.chomp.to_f                   #years

puts 'What\'s the interest rate (%)?'
annual_interest_rate = gets.chomp.to_f / 100             #annual interest rate


puts 'Your money will grow to:'
answer = deposits *
 (
	(
		(
			(1 + (annual_interest_rate/12))
			**
			(number_of_years *12)
			)
			 -1)
			  * 
				(12/annual_interest_rate)
			)

puts "£#{'%.2f' % answer}!"