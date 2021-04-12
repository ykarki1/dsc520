# Read in the scores.csv file and create a dataframe out of it
# setwd("~/MSDS/DSC520")
library(ggplot2)
theme_set(theme_minimal())

df <- read.csv("scores.csv", stringsAsFactors = FALSE)


# What are the observational units in this study?
  
str(df)

# "Count" and "Score" are quantitative numerical and "section" is categorical nominal variable

# Create one variable to hold a subset of your data set that contains only the Regular Section and one variable for the Sports Section.

regular <- df[df$Section =="Regular",];

sports <- df[df$Section == "Sports",]

# plot of regular section
plot(regular$Score, regular$Count, 
     main = "Regular section student's scores", 
     xlab = "Scores",
     ylab = "Count")

# plot of sports section
plot(sports$Score, sports$Count,
     main = "Sports section student's scores", 
     xlab = "Scores",
     ylab = "Count")

# Comparison of both sections
plot(regular$Score, sports$Count,
     type = "l",
     col = "blue",
     main = "Regular vs. Sports section student's scores", 
     xlab = "Scores",
     ylab = "Count")
lines(sports$Score, sports$Count,
       col = "red")
legend("topright",
       c("Regular", "Sports"),
       fill = c("blue", "red"));


