## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


## Caching the Inverse of a Matrix:

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## This function gives the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated ,
## then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invse <- x$getInverse()
  if (!is.null(invse)) {
    message("getting cached data")
    return(invse)
  }
  mat <- x$get()
  invse <- solve(mat, ...)
  x$setInverse(invse)
  invse
}
