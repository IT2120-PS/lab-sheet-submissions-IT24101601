setwd("C:\\Users\\user\\Desktop\\Lab-5")
getwd()

#1.import the data set
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
Delivery_Times
# view the file in a separate window
fix(Delivery_Times)
# attach the file in to r
attach(Delivery_Times)

# rename the columns name
names(Delivery_Times) <- c("x1")

# 2. draw the histogram for the deliver times
histograms <- hist(x1, main = "Histogram of Deliver Times",breaks = seq(20,70,length = 10), right = FALSE)

# 3. comment on the shape of the distribution
breaks <- round(histograms$breaks)
breaks

# assign class freq of the histogram in to a variable called freq
freq <- histograms$counts
freq

# assign class mids of the histogram in to a variable calles mids
mids <- histograms$mids
mids

# create the variable called classes for the frequency distribution 
classes <- c()

# creating for loop for to assign classes for created vector
for (i in 1: length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}
classes

# obtain the freq distribution combining freq table and classes
cbind(Classes =  classes, Frequency = freq)

# Draw the polygon for the given plot
lines(mids, freq)

# 5.Draw a cumulative frequency polygon (ogive) for the data in a separate plot.
# using cumsum command we can get cumulative freq
cum.freq <- cumsum(freq)

# creating a null variable calles 
new <- c()

# using for loop to store the cumulative freq in order to get the ogive
for(i in 1:length(breaks)){
  if(i == 1){
    new[i] = 0
  } else {
    new[i]= cum.freq[i-1]
  }
}

# Draw the cumulative frequency polygon (ogive)
plot(breaks, new, type = "l",
     main = "Cumulative Frequency Polygon for Delivery Time",
     xlab = "Delivery times",
     ylab = "Cumulative frequency",
     ylim = c(0, max(cum.freq)))

# obtain upper limit of each along with its cumulative frequency in a table
cbind(upper = breaks, CumFreq = new)


