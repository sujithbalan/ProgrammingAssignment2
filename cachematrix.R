## R functions to cache the inverse of the matrix, this would avoid performing the
## costly computation repeatedly, espectially when the contents of the matrix have not changed
## the cache can be looked up instead.

## Function to create a special matrix that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {

}


## Computes the inverse of the special matrix returned by makeCacheMatrix, if the inverse is alreade
##calculated then inverse matrix the retreived from cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
