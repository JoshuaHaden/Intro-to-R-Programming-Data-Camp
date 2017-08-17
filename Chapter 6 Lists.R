###Chapter 6 Lists

###Creating A List
#my_list <- list(comp1, comp2 ...)
# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)

###Creating A Named List
#my_list <- list(name1 = your_comp1, name2 = your_comp2)
#my_list <- list(your_comp1, your_comp2)
#names(my_list) <- c("name1", "name2")
# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]

# Construct 'my_list' with these different elements:
my_list <- list(vec = my_vector, mat = my_matrix, df = my_df)

# Print 'my_list' to the console
my_list

###Creating A Named List (2)
# The variables mov, act and rev are available in Data Camp's workspace

# Finish the code to build shining_list
shining_list <- list(moviename = mov, actors = act, reviews = rev)

###Slecting Elements From A List
# shining_list is already pre-loaded in the workspace

# Print out the vector representing the actors
shining_list$actors

# Print the second element of the vector representing the actors
shining_list$actors[2]

###Adding More Movie Information To The List
#ext_list <- c(my_list , my_val)
#ext_list <- c(my_list, my_name = my_val)
# 'shining_list', the list containing moviename, actors and reviews, 
#is pre-loaded in the workspace

# We forgot something; add the year to shining_list
shining_list_full <- c(shining_list, year = 1980)

# Have a look at shining_list_full
str(shining_list_full)
