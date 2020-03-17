## We have to write a code consisting of two functions ##"makeCacheMatrix" and "CacheSolve" that cache the inverse of a ## matrix

## This function "makeCacheMatrix" is a function that creates a ##matrix" object that caches the inverse thereof.
	
makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}





## "CacheSolve" is a function that makes the inverse of the "matrix" ##returned just above. 


cacheSolve <- function(x, ...) {
	
## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j

        
}
