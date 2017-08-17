###Chapter 4 Factors

###What's A Factor And Why Would You Use It?
#Factors refer to a statistical data type to store categorical variables.
# Assign to the variable theory what this chapter is about!
theory <- "factors for categorical variables"

###What's A Factor And Why Would You Use It? (2)
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Define factor_gender_vector using 'factor()'
factor_gender_vector <- factor(gender_vector)

# Print factor_gender_vector
factor_gender_vector

###What's A Factor And Why Would You Use It? (3)
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High","Low", "Medium")

factor_animals_vector <- factor(animals_vector)
factor_animals_vector
factor_temperature_vector <- factor(temperature_vector, order = TRUE, 
                                    levels = c("Low", "Medium", "High"))
factor_temperature_vector

###Factor Levels
#levels() allows R to change names for clarity or for other reasons
survey_vector <- c("M", "F", "F", "M", "M")

# Encode survey_vector as a factor
factor_survey_vector <- factor(survey_vector)

# Specify the levels of 'factor_survey_vector'
levels(factor_survey_vector) <- c("Female", "Male")

# Print factor_survey_vector
factor_survey_vector

###Summarizing A Factor
#summary() gives overview of the contents of a variable
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Type your code here for 'survey_vector'
summary(survey_vector)

# Type your code here for 'factor_survey_vector'
summary(factor_survey_vector)

###Battle Of The Sexes
# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")

# Male
male <- factor_survey_vector[1] 

# Female
female <- factor_survey_vector[2]

# Battle of the sexes: Male 'larger' than female?
male > female

###Ordered Factors
# Create speed_vector for a team of five data analysts
speed_vector <- c("fast", "slow", "slow", "fast", "insane")

###Ordered Factors (2)
#To create an ordered factor, ordered and levels arguments are needed
#factor(some_vector,ordered = TRUE,levels = c("lev1", "lev2" ...))

# Create speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")

# Add your code below
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = 
                                c("slow", "fast", "insane"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector) 

###Comparing Ordered Factors
# Create factor_speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = 
                                c("slow", "fast", "insane"))

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5] 

# Is data analyst 2 faster data analyst 5?
da2 > da5
