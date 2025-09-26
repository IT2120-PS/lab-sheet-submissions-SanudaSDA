setwd("C:\\Users\\User\\Desktop\\IT24100788_Lab_8")

#Part 1
data2<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data2)

#1
pop_mean<-mean(Weight.kg.)
pop_sd<-sd(Weight.kg.)

cat("Population Mean (True Mean):",pop_mean,"\n")
cat("Population Standard Deviation (True SD):",pop_sd,"\n")

#2
samples<-c()
sample_names <- c()

for (i in 1:25){
  S <- sample(Weight.kg.,6,replace =TRUE)
  samples <- cbind(samples,S)
  sample_names<-c(sample_names, paste('S',i))
}

colnames(samples)= sample_names
s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

#3

samplemean<-mean(s.means)
samplesd<-sd(s.means)

pop_mean
pop_sd

truesd=pop_sd/6
samplesd
