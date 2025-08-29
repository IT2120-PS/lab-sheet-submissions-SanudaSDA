setwd("C:\\Users\\it24100788\\Desktop\\IT24100788")
getwd()
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

Delivery_Times$Delivery <- as.numeric(Delivery_Times$Delivery)

hist(Delivery_Times$Delivery, 
     breaks = seq(20, 70, by = 5), 
     right = TRUE, 
     col = "lightblue", 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time", 
     ylab = "Frequency")

cf <- cumsum(table(cut(Delivery_Times$Delivery, breaks = seq(20, 70, by = 5), right = TRUE)))

plot(seq(22.5, 67.5, by = 5), cf, type = "o", col = "blue", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency", 
     main = "Cumulative Frequency Polygon (Ogive)")

