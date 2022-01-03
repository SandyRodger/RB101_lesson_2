VALID_CHOICES = ['r', 'p', 's', 'l', 'sp']

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
		(first == 'lizard' && second == 'spock') ||
		(first == 'spock' && second == 'rock')
end

# potential_results = {
# 	:rock => ['scissors', 'lizard'],
# 	:paper => ['spock', 'rock'],
# 	:scissors => ['paper', 'lizard'],
# 	:lizard => ['spock', 'paper'],
# 	:spock => ['rock', 'scissors']
# }

def display_result(player, computer)
  if win?(player, computer)
    prompt("you won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("it's a tie")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  player = ''
  loop do
		prompt("Welcome to 'Rock, paper, scissors, lizard, spock. The options are abbreviated below for your convenience.")
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player = Kernel.gets().chomp()

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("that's not a valid choice.")
    end
  end

	def complete_player_input(player)
		if player == 'r'
			'rock'
		elsif player =='p'
			'paper'
		elsif player =='s'
			 'scissors'
		elsif player =='l'
			'lizard'
		elsif player =='sp'
			'Spock'
		end
	end

		def complete_computer_input(computer)
		if computer == 'r'
			'rock'
		elsif computer =='p'
			'paper'
		elsif computer =='s'
			 'scissors'
		elsif computer =='l'
			'lizard'
		elsif computer =='sp'
			'Spock'
		end
	end

  computer = VALID_CHOICES.sample

	computer = complete_computer_input(computer)
	
	player = complete_player_input(player)

  prompt("you chose #{player}, computer chose: #{computer}")

	display_result(player, computer)

  prompt("do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("thank you for playing! Bye!")
