setwd("C:\\Users\\it24101601\\Desktop\\IT24101601")
getwd()

## import the data set
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

# Question 1
# Calculate the population mean and population standard deviation of the laptop bag weights.
popmn<-mean(Weight.kg.)
popmn
popvar<-var(Weight.kg.)
popvar

# question 2
# Draw 25 random samples of size 6 (with replacement) and calculate the sample mean and sample standard deviation for each sample
samples <- c()
n<-c()
for(i in 1:25){
  s<- sample(Nicotine, 6, replace=TRUE)
  samples<-cbind(samples, s)
  n<-c(n,paste('S', i))
}
colnames(samples) = n

# Calculate the mean and standard deviation of the 25 sample means and state the relationship of them with true mean and true standard deviation.
s.means<-apply(samples, 2, mean)
s.means

s.vars<-apply(samples, 2, var)
s.vars

samplemean<-mean(s.means)
samplemean

samplevars<-var(s.means)
samplevars

popmn
samplemean

# compare the population variance and varianace of sample
truevar = popvar/5
truevar
samplevars
