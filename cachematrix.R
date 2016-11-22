## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    cachedInverseMatrix<- NULL
    
    get <- function() {
        x
    }
    set <- function(newMatrix = matrix()) {
        cachedInverseMatrix <<- NULL;
        x <<- newMatrix
    }
    
    getInverse <- function() {
        cachedInverseMatrix
    }
    
    setInverse <- function(y) {
        cachedInverseMatrix <<- y
    }
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    if (is.null(x$getInverse())) {
        newInverseMatrix <- solve(x$get())
        x$setInverse(newInverseMatrix)
    } else {
        message("Getting cached data")
        x$getInverse()
    }
}
