
#Check if BOD dataset is an S3 by checking object 
is.object(BOD)

#Check if BOD dataset is a S4
isS4(BOD)

#Check  generic functions 
plot(BOD)
summary(BOD)
mean(BOD)

#Check the data type of the dataset
typeof(BOD)

#-----------------------------------------------
#Example methodds on R dataset website

require(stats)
# simplest form of fitting a first-order model to these data
fm1 <- nls(demand ~ A*(1-exp(-exp(lrc)*Time)), data = BOD,
           start = c(A = 20, lrc = log(.35)))
coef(fm1)
fm1
# using the plinear algorithm  (trace o/p differs by platform)
## IGNORE_RDIFF_BEGIN
fm2 <- nls(demand ~ (1-exp(-exp(lrc)*Time)), data = BOD,
           start = c(lrc = log(.35)), algorithm = "plinear", trace = TRUE)
## IGNORE_RDIFF_END
# using a self-starting model
fm3 <- nls(demand ~ SSasympOrig(Time, A, lrc), data = BOD)
summary(fm3)

#-----------------------------------------------------