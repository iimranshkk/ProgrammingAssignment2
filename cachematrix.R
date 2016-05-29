## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## THIS CALCULATES INVERSE AND GET THE CACHED INVERSE RESULT IF PRESENT

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


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
