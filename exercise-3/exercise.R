# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("blue", "yellow", "red", "green", "white", "black")

# Use the `sample` function to select a single marble
marble <- sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(marbles){
  answer <- sample(marbles, 1)
  guesses <- Game(0, answer)
  print(paste("Correct! It took you ", guesses, "guesses."))
}

Game <- function(guesses, answer){
  guesses <- guesses + 1
  guess <- readline(prompt = "Guess which color: ")
  if (guess != answer) {
    print("Sorry, try again")
    return (Game(guesses, answer))
  } else {
    return (guesses)
  }
}
# Play the marble game!
MarbleGame(marbles)

# Bonus: Play the marble game until you win, keeping track of how many tries you take


## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability