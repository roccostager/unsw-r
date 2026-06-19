source("loadData.R")

airbnb.price <- airbnb.df$price
sort(airbnb.price, decreasing = T)[1:100]