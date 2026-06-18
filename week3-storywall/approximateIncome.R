reviewRatio <- 0.7
averageStay <- 3

stays <- airbnb.df$reviews_per_month / reviewRatio
(revenue <- sum(airbnb.df$price * pmin(pmax(airbnb.df$minimum_nights, averageStay), airbnb.df$maximum_nights) * stays) * 12)
