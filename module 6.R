# Create 2 matrices and name them A and B 
A <- matrix(c(2,0,1,3), ncol = 2)
A

B <- matrix(c(5,2,4,-1), ncol = 2)
B
                   
 #Add and Subtract the two matrices 
A + B
A - B 

#Build a diagonal matrix 
C <- diag(4,1,2,3)
C 

#Generate a matrix 
D <-rbind(c(3,1,1,1,1), c(2,3,0,0,0), c(2,0,3,0,0), c(2,0,0,3,0), c(2,0,0,0,3))
D
