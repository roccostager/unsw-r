source("loadData.R")

# Assumptions
reviewRatio <- 0.7  # 70% of people leave reviews
avgNightsPerStay <- 3  # 3-night average stay

# Estimate Number of Nights in a Month
stays <- airbnb.df$reviews_per_month / reviewRatio
nights <- pmin(pmax(airbnb.df$minimum_nights, avgNightsPerStay), airbnb.df$maximum_nights) * stays

# Sanity check: use availability_30 as cap
nights <- pmin(nights, 30 - airbnb.df$availability_30)

# Compute revenue
(revenue <- 12 * sum(airbnb.df$price * nights))