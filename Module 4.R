# Assigning the variables to generate vector
freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, "NA", 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

#Generate a dataframe based on data from vectors
bp.df <- data.frame(freq, bloodp, first, second, finaldecision)
bp.df

#Create the boxplots 
par(mfrow = c(1,2))
boxplot(bp.df $ bloodp ~ bp.df $ first, main = "Blood Pressure Assesment", xlab = "First Assesment", ylab = "Blood Pressure")
boxplot(bp.df $ bloodp ~ bp.df $ second, main = "Blood Pressure Assesment", xlab = "Second Assesment", ylab = "Blood Pressure")
par(mfrow = c(1,1))


#Create a Histogram 
hist(bp.df $ bloodp, main = "Blood Pressure", xlab = "Blood Pressure", ylab = "frequency")