##Use makeCachematrix fucntion to create a matrix
makeCacheMatrix <- function(x = matrix()) {
}
##To solve the given input matrix
cacheSolve <- function(x, ...) {
}
makeCacheMatrix <- function(x = matrix()){
  ##to find the inverse of the matrix
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function(){x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}
##Code to give a message
cacheSolve <- function(x, ...){
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}   

 
