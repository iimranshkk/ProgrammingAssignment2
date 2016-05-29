## THIS CREATES A MATRIX , SETS THE MATRIX INTO A DIFFERENT ENVIRONMENT OTHER THAT THIS FUNCTION AND ALSO GETS THE MATRIX IF NEEDED
makeCacheMatrix <- function(x=matrix()){
r <- nrow(x)
s <- ncol(x)
i <- matrix(nrow=r,ncol=s)
set <- function(y){
x <<- y
i <<- matrix(nrow=r,ncol=s)
}

get<- function() x

list(set=set,get=get)

}

## THIS CALCULATES INVERSE, SETS AND GET THE CACHED INVERSE RESULT IF PRESENT
cacheSolve <- function(x,...){
setInverse <- function(x) i <<- solve(x)
getInverse <- function() i
i <- getInverse()
if(!is.null€(i)){
message("getting cached inverse data")
return(i)
}
else{
data <- get()
i <- solve(data)
setInverse(i)
i
}
}
