#Create the matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:100, nrow = 10)

#transpose A and B 
t(A)
t(B)

#create two vectors (a and b)
a <- c(1:2)
b <- c(1:2)

#multiply matrices by vectors 
C = a*A
D = b*B

#re-assign the vectors a and b to equal the number of rows of the column for the corresponding matrix
a =c(1:10)
b =c(1:10)

#multiply the matrixx by matrix 
A %*%a
B&8&b

#inverse a matrix 
S = matrix(2:5, nrow = 2)

#check det 
det(S)
