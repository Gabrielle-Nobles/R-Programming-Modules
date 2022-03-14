#Load the libraries 
library(Lock5Data)
library(lattice)
library(ggplot2)

#Assign the data set to a variable 
speed_data <- speed_gender_height
speed_data

# Boxplot that compares the speed to gender 
par(mfrow=c(1,1))
boxplot(speed_data$speed ~ speed_data$gender, col = "green",
        main = " Gender and Speed", xlab = "gender", ylab = "speed")

#Lattice packagae 
xyplot(speed ~ height, data = speed_data, grid = TRUE)


#Scatter plot
 ggplot(data = speed_data, 
        aes(x=height, y= speed, colour= gender )) +
   geom_point(alpha=0.1) +
   geom_smooth()
 