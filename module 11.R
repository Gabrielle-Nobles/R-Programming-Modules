 x <- matrix(1:9, nrow = 3, ncol = 3)
 x

tukey_multiple <- function(x) { 
  outliers <- array(TRUE,dim=dim(x)) 
  for (j in 1:ncol(x)) 
  { 
    outliers[,j] <- outliers[,j] 
  } 
  outlier.vec <- vector(length=nrow(x)) 
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i,]) 
    }
    return(outlier.vec) }

tukey_multiple(x)

