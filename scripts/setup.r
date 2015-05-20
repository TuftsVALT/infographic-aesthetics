# Stats lib
#library(lme4)

# Load CSV
master <- read.csv("../data.csv")
nrow(master)

# Filter out entries with no complexity (images for which the complexity algorithm failed)
master <- subset(master, Complexity > -1.0)
nrow(master)

# Add mean_response column
master$mean_response <- (master$Phase.1.Response + master$Phase.2.Response)/2

# Add abs_diff_response column
master$abs_diff_response <- abs(master$Phase.1.Response - master$Phase.2.Response)

# Add mean_response column
master$mean_response <- (master$Phase.1.Response + master$Phase.2.Response)/2

# Filter out deviations over 2
master <- subset(master,  abs_diff_response < 2.1)
nrow(master)
