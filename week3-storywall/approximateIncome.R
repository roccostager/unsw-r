source("loadData.R")

# Assumptions
reviewRatio <- 0.7  # 70% of people leave reviews
avgNightsPerStay <- 3  # 3-night average stay

# Estimate Number of Nights in a Month
stays <- airbnb.df$reviews_per_month / 0.7
nights <- pmin(pmax(airbnb.df$minimum_nights, avgNightsPerStay), airbnb.df$maximum_nights) * avgNightsPerStay

# Sanity check: use availability_30 as cap
nights <- pmin(nights, 30 - airbnb.df$availability_30)

# Compute revenue
(revenue <- 12 * sum(airbnb.df$price * nights))