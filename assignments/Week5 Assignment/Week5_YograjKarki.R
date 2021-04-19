# Assignment: ASSIGNMENT 5
# Name: Karki, Yograj
# Date: 2021-04-15


# setwd("~/MSDS/DSC520/dsc520/")
# Loading the packages

library(ggplot2)
library(dplyr)
library(purrr)
theme_set(theme_minimal())

## I'm going to use built-in dataset of R called mtcars

# Using the dplyr package, use the 6 different operations to analyze/transform the data - GroupBy, Summarize, Mutate, Filter, Select, and Arrange – 

# Grouping the cars by number of cylinders
df1 <- group_by(mtcars, cyl)

# Summarise the df1 to see the average weight of cars on the basis of number of cylinders
summarise(df1, mean(wt))

# Mutate: adding a new variable (wt_kg) by converting the weight (wt) of the car (in 1000 lbs) into exact kilogram unit
df2 <- mutate(mtcars, wt_kg = wt * 1000 * 0.453592)


# Filter function: Filtering the cars with manual transmission from am column (1 is manual, 0 is automatic)
df3 <- filter(mtcars, am == 1)

# Select function: Selecting only mpg, cyl, hp, wt and am variables
df4 <- select(mtcars, mpg, cyl, hp, wt, am)

# Arrange function:  arranging the cars in descending order in terms of fuel consumption (mpg)
df5 <- arrange(mtcars, desc(mpg))


# keep function: keeping the mpg values more than the mean values from purrr package
high_mpgs <- keep(mtcars$mpg, ~ .x > mean(mtcars$mpg)) 



# Use the cbind and rbind function on your dataset
# creating a random vector for cbind and rbind
new_col <- seq(1,20, length = nrow(mtcars))
new_row <- seq(1,20, length = ncol(mtcars))

# adding a row and a column on the dataset
df6 <- cbind(mtcars, new_col)

df7 <- rbind(mtcars, new_row)

# Split a string, then concatenate the results back together

splitted <- unlist(strsplit(c("A quick brown fox jumps over the lazy dog."), split=" ")) # unlist function so that it outputs a character vector
splitted

# Concatenating the elements of the character vector back together
combined <- paste(splitted, collapse=" ")
combined




