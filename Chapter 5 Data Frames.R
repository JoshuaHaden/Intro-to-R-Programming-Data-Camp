###Chapter 5 Data Frames

###What's A Data Frame?
#A data frame has the variables of a data set as columns and the observations
#as rows.
# Built-in R data set stored in a data frame
mtcars

###Quick, Have A Look At Your Data Set
#head() shows the first observations of a data frame
#tail() shows the last observations of a data frame
# Have a quick look at your data
head(mtcars)

###Have A Look At The Structure
#Structure tells the total number of observations, total number of variables,
#a full list of the variable names, the data type of each variable, and
#the first observations.
# Investigate the structure of the mtcars data set to get started!
str(mtcars)

###Creating A Data Frame
#Source: Wikipedia
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus"
          , "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", 
          "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name,type,diameter,rotation,rings)

###Creating A Data Frame (2)
# Check the structure of planets_df
str(planets_df)

###Selection Of Data Frame Elements
#Same logic as selecting elements from vectors and matrices
# The planets_df data frame from the previous exercise is pre-loaded

# Print out diameter of of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4, ]

###Selection Of Data Frame Elements (2)
# The planets_df data frame from the previous exercise is pre-loaded

# Select first 5 values of diameter column
#planets_df[1:3,"type"]
planets_df[1:5, "diameter"]

###Only Planet With Rings
# planets_df is pre-loaded in your workspace

# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
rings_vector

###Only Planet With Rings (2)
# planets_df and rings_vector are pre-loaded in your workspace

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]

###Only Planets With Rings But Shorter
#subset(my_df, subset = some_condition)
# planets_df is pre-loaded in your workspace

# Select planets with diameter < 1
subset(planets_df, subset = diameter < 1)

###Sorting
#order() is a function that ranks positions of each element when applied to
#a variable
a <- c(100, 10, 1000)
order(a)
#Reshuffle a
a[order(a)]

###Sorting Your Data Frame
# planets_df is pre-loaded in your workspace

# Use order() to create positions
positions <- order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions, ]

