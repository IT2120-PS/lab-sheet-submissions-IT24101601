setwd("C:\\Users\\it24101601\\Desktop\\IT24101601")
getwd()

# 1. 

# observed counts for each snack type
observed <- c(120, 95, 85, 100)

# expected probabilities
expected_probs <- rep(1/4, 4)

# perform the chi-squared test
chi_test <- chisq.test(observed, p = expected_probs)

# print the results
chi_test

# 3.

# Chi-squared test x squared = 6.5
# Degrees of the freedom = 3
# p - values = 0.08966

# The p value is greater than 0.05 therefore we fail to reject the null hypthoesis



