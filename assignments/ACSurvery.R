# Assignment: ASSIGNMENT 3.2
# Name: Karki, Yograj
# Date: 2021-04-01

## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

# Checking the current working directory
getwd()

## Set the working directory to the root of your DSC 520 directory
setwd("//Users/ykarki1/MSDS/DSC520/dsc520/assignments")

## Load the `acs-14-1yr-s0201.csv` to
acs_df <- read.csv("acs-14-1yr-s0201.csv")
head(acs_df)
ncol(acs_df)

# Histogram of HSDegree

plot = ggplot(acs_df, aes(HSDegree, y = ..density.. )) + geom_histogram(bins = 17) + 
  ggtitle("Counties with ratio of population having High school degree")+ 
  xlab("Percentage") + 
  ylab("Number of county")
plot

ggplot(df, aes(x = PF)) + 
  geom_histogram(aes(y =..density..),
                 breaks = seq(-50, 50, by = 10), 
                 colour = "black", 
                 fill = "white") +
  stat_function(fun = dnorm, args = list(mean = mean(df$PF), sd = sd(df$PF)));

plot = ggplot(acs_df, aes(HSDegree)) +
  geom_histogram(aes(y = ..density..), binwidth = 2)+
  stat_function( fun = dnorm, args = list(mean = mean(acs_df$HSDegree), sd = sd(acs_df$HSDegree)), colour ='red')
plot

probplot(HSDegree)
