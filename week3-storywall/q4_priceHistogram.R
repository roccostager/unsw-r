source("loadData.R")

airbnb.price <- airbnb.df$price

hist(airbnb.price, breaks = 50)
hist(log(airbnb.price), breaks = 50)
