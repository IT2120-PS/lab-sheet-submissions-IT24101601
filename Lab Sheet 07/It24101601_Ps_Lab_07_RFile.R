# Set working directory
setwd("C:\\Users\\Asma\\Desktop")

# uniform Distribution

prob_q1 <- punif(25, min=0, max=40) - punif(10, min=0, max=40)
print(prob_q1)

# exponential Distribution

prob_q2 <- pexp(2, rate=1/3)
print(prob_q2)


# Normal Distribution
prob_q3i <- 1 - pnorm(130, mean=100, sd=15)
print(prob_q3i)

# 95th Percentile
iq_95th <- qnorm(0.95, mean=100, sd=15)
print(iq_95th)