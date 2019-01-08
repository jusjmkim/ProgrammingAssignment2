## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <<- NULL
  x
}

## Retrieves the cache of the inverse of the special "matrix" from the output of makeCacheMatrix
## If there is no cache, it computes the inverse of the special "matrix" and caches it

cacheSolve <- function(x, ...) {
  if(!is.null(inverseMatrix)) {
    message("getting cached data")
    return(inverseMatrix)
  }
  inverseMatrix <<- solve(x)
  inverseMatrix
}
