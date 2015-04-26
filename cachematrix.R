## R functions to cache the inverse of the matrix, this would avoid performing the
## costly computation repeatedly, espectially when the contents of the matrix have not changed
## the cache can be looked up instead.

## Function to create a special matrix that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    ##set the value of inverse
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    ##get the value of inverse
    get <- function() x

    setinv <- function(inverse) inv <<- inverse
    # return inverse
    getinv <- function() inv

    list( set = set, get = get,
          setinv = setinv,
          getinv = getinv )
}


## Computes the inverse of the special matrix returned by makeCacheMatrix, if the inverse is alreade
##calculated then inverse matrix the retreived from cache.
cacheSolve <- function(x, ...) {
    inverse <- x$getinv()
    if(!is.null(inverse)) {
        message("getting cached data")
        ## return inverse from cache
        return(inverse)
    }
    ## Return a matrix that is the inverse of 'x'
    mat <- x$get()
    inverse<- solve(mat, ...)
    x$setinv(inverse)
    return (inverse)
}
