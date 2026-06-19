source("loadData.R")

weightMatrix <- matrix(c(0.4, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1), nrow = 1, ncol = 7)
reviewMatrix <- rbind(
  airbnb.df$review_scores_rating,
  airbnb.df$review_scores_value,
  airbnb.df$review_scores_location,
  airbnb.df$review_scores_communication,
  airbnb.df$review_scores_checkin,
  airbnb.df$review_scores_cleanliness,
  airbnb.df$review_scores_accuracy
)

median(weightMatrix %*% reviewMatrix, na.rm = T)