require "pry"

def prompt(message)
	Kernel.puts ("=> #{message}")
end

def valid_number?(num)
	num.to_i != 0
end
 
def operation_to_message(op)
	case op
	when '1'
		'Adding'
	when '2'
		'Subtracting'
	when '3'
		'Multiplying'
	when '4'
		'Dividing'
	end
end

prompt("Welcome to Calculator! Enter your name:")

name =''

loop do
	name = Kernel.gets().chomp()
	if name.empty?()
		prompt("Make sure to use a valid name.")
	else
		break
	end
end

prompt("Hi #{name}!")

loop do
	number1 = ''
	loop do
		prompt("What's the first number?")
		number1 = Kernel.gets().chomp()

		if valid_number?(number1)
			break
		else
			prompt ("Hmm... that doesn't look like a valid number")
		end
	end

	binding.pry
	
	number2 = ''
	loop do
		prompt("What's the second number?")
		number2 = Kernel.gets().chomp()

		if valid_number?(number2)
			break
		else
			prompt("Hmm... that doesn't look like a valid number")
		end
	end

	operator_prompt = <<-MSG
		What's the operation you'd like to perform?
		1)Add 
		2) Subtract 
		3) Multiply 
		4) Divide
	MSG
	
	prompt(operator_prompt)

	operator = ''
	loop do
		operator = Kernel.gets().chomp()

		if %w(1 2 3 4).include?(operator)
			break
		else
			prompt("Must choose 1, 2, 3 or 4")
		end
	end

	prompt("#{operation_to_message(operator)} the two numbers...")

	result = case operator
	when '1'
		number1.to_i + number2.to_i
	when '2'
		number1.to_i - number2.to_i
	when '3'
		number1.to_i * number2.to_i
	when '4'
		number1.to_f / number2.to_f
	end


	prompt("The result is #{result}")  

	prompt("Do you want to perfom another calculation? (Y to calculate again)")
		answer = Kernel.gets().chomp()
		break unless answer.downcase().start_with?('y')
end


prompt("Thank you for using calculator")

# Refactoring:

# 1 Add a unique prompt
# 2 Change if conditional to a case statement.
# 3 make sure the logic of the program reflects the logic of the flow chart.
# 4 Ask the useer if they want to perform another operation.
# 5 Ask for user's name
# 6 Validate operator.
# 7 Use a Herdoc to break up long prompts.