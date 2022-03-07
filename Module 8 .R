#Load Libraries
library(pryr)
library(ISLR)
library(boot)
library(plyr)
library(data.table)

#Read in the file 
X <- read.table("/Users/gabriellenobles/Desktop/Assignment 6 Dataset.csv", header = T, sep = ",")
X

#Generate the mean 
Y <-ddply(X, "Sex", transform, Grade.Average = mean(Grade)) 
Y

#Print table to a file 
write.table(Y, "Sorted_Average", sep=",")

#Filter the data set with student names 
X_2 <- subset(X, grepl("i", X$Name))

#Write to a new file 
write.table(X_2, "DataSubset", sep= ",")
