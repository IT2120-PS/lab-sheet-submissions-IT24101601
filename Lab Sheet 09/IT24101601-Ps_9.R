setwd("C:\\Users\\user\\Desktop\\IT24101601_Lab9_PS")
getwd()

# generate a random sample of size 25
set.seed(123)
sample_data <- rnorm(25, mean = 45, sd = 2)
print(sample_data)

t_test_result <- t.test(sample_data, mu = 46, alternative = "less")
print(t_test_result)
