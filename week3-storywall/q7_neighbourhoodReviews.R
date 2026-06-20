source("loadData.R")

mean(airbnb.df$review_scores_rating[airbnb.df$neighbourhood == "Randwick"])
