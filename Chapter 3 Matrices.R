###Chapter 3 Matrices

###What's A Matrix
#1:9 is a shortcut for c(1,2,3,4,5,6,7,8,9)
#byrow indicates matrix is filled by the rows
#nrow indicates matric should have 3 rows
# Construction of a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow=TRUE, nrow=3)

###Analyzing Matrices, You Shall
#Source: Wikipedia
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE)

###Naming A Matrix
#Add Names for the rows and columns of a matrix
#rownames(my_matrix) <- row_names_vector
#colnames(my_matrix) <- col_names_vector
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), 
                           nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

###Calculating The Worldwide Box Office
#rowSums() calculates the totals for each row of a matrix
# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", 
                                             "The Empire Strikes Back", 
                                             "Return of the Jedi"), 
                                           c("US", "non-US")))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

###Adding A Column For the Worldwide Box Office
#cbind() merges matrices and/or vectors together by column
# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", 
                                             "The Empire Strikes Back", 
                                             "Return of the Jedi"), 
                                           c("US", "non-US")))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

###Adding A Row
#ls() shows contents in workspace
#rbind() merges matrices and/or vectors together by row
# star_wars_matrix is available in your workspace
## Construct star_wars_matrix
box_office1 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(box_office1, nrow = 3, byrow = TRUE,
                           dimnames = list(c("The Phantom Menace", 
                                             "Attack of the Clones", 
                                             "Revenge of the Sith"), 
                                           c("US", "non-US")))
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

###Total Box Office Revenuw For The Entire Saga
#colSums() works similarly to rowSums()
# Print box office Star Wars
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print total_revenue_vector
total_revenue_vector

###Selection Of Matrix Elements
#my_matrix[1,2] selects the element at the first row and second column.
#my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 
#and columns 2, 3, 4.
#my_matrix[,1] selects all elements of the first column.
#my_matrix[1,] selects all elements of the first row.
# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]

# Average non-US revenue for first two movies
mean(non_us_some)

###A Little Arithmetic With Matrices
# Box office Star Wars: In Millions (!) 
# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back",
                 "Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, 
                           dimnames = list(movie_names, col_titles))

# Estimation of visitors (Assume price is $5)
visitors <- all_wars_matrix/5

# Print the estimate to the console
visitors

###A Little Arithmetic With Matrices (2)
# all_wars_matrix is available in your workspace
all_wars_matrix
## Construct ticket_prices_matrix
ticket_price <- c(5.0, 5.0, 6.0, 6.0, 7.0, 7.0, 4.0, 4.0, 4.5, 4.5, 4.9,
                  4.9)
ticket_prices_matrix <- matrix(ticket_price, nrow = 6, byrow = TRUE,
                            dimnames = list(c("A New Hope", 
                                              "The Empire Strikes Back",
                                              "Return of the Jedi",
                                              "The Phantom Menace", 
                                              "Attack of the Clones", 
                                              "Revenge of the Sith"), 
                                            c("US", "non-US")))
ticket_prices_matrix

# Estimated number of visitors
visitors <- all_wars_matrix / ticket_prices_matrix

# US visitors
us_visitors <- visitors[ ,1]

# Average number of US visitors
mean(us_visitors)

