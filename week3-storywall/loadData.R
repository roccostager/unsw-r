setwd("C:/Users/rocco/dev/repos/unsw-r/week3-storywall")
rm(list = ls())

airbnb.df <- read.csv("data/AirbnbSydney.csv")
str(airbnb.df)