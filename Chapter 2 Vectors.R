###Chapter 2 Vectors

###Create A Vector
# Define the variable 'Vegas'
vegas <- "Go!"

###Create A Vector (2)
#Vectors are one-dimensional arrays that hold numeric, character, or logical
#data. Vectors are a simple tool to store data.
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
# Complete the code for 'boolean_vector'
boolean_vector <- c(TRUE,FALSE,TRUE)

###Create A Vector (3)
# Poker winnings from Monday to Friday
#Positive values are the amount won and negative values are the amount lost.
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24,-50,100,-350,10)

###Naming A Vector
#names() gives a name to the elements of a vector
#Example
some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")
names(some_vector)
some_vector

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Add your code here
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday"
                         , "Friday")
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday"
                            , "Friday")

###Naming A Vector (2)
#Can assign days of the week vector to a variable for efficiency
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Create the variable 'days_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

#Assign the names of the day to 'roulette_vector' and 'poker_vector'
names(poker_vector) <-  days_vector 
names(roulette_vector) <- days_vector

###Calculating Total Winnings
#Example: All three statements are equivalent.
c(1, 2, 3) + c(4, 5, 6)
c(1 + 4, 2 + 5, 3 + 6)
c(5, 7, 9)
#Also can do calculations with variables that represent vectors
a <- c(1, 2, 3) 
b <- c(4, 5, 6)
c <- a + b

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of 'A_vector' and 'B_vector'
total_vector <- A_vector + B_vector

# Print 'total_vector' to the console
total_vector

###Calculating Total Winnings (2)
# Poker winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday:
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Up to you now (Total winnings)
total_daily <- poker_vector + roulette_vector
total_daily

###Calculating Total Winnings (3)
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Up to you now:
total_roulette <- sum(roulette_vector)
total_week <- sum(poker_vector, roulette_vector)

# Print total_week
total_week

###Comparing Total Winnings
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette
answer <- total_poker > total_roulette

# Print answer to console
answer

###Vector Selection: The Good Times
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]

###Vector Selection: The Good Times (2)
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2, 3, 4)]
poker_midweek

###Vector Selection: The Good Times (3)
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]
roulette_selection_vector

###Vector Selection: The Good Times (4)
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]

# Calculate the average of the elements in poker_start
mean(poker_start)

###Selection By Comparison - Step 1
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0

# Print selection_vector
selection_vector

###Selection By Comparison - Step 2
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

###Advanced Selection
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on roulette?
selection_vector <- roulette_vector >0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days

