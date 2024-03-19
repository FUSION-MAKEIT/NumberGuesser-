# guessing_game.rb

# Print a welcome message
puts "Welcome to the guessing game!"

# Generate a random number between 0 and 9
secret_num = rand(0..9)

# Initialize variables
guess = nil
guess_count = 0
guess_limit = 3
out_of_guesses = false

# Main game loop
while guess != secret_num && !out_of_guesses
  if guess_count < guess_limit
    # Ask the user for their guess
    puts "Enter your guessed number:"
    guess = gets.chomp.to_i
    guess_count += 1
  else
    # If the user has reached the maximum number of guesses
    out_of_guesses = true
    break
  end
end

# Check if the user won or lost
if out_of_guesses
  puts "You lose!"
  puts "You have reached the maximum number of guesses."
  puts "The secret number was #{secret_num}."
else
  puts "Congratulations! You won!"
  puts "You guessed the secret number #{secret_num} and you did it in #{guess_count} guesses."
end
