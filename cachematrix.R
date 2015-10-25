## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function makeCacheMatrix caches the inverse of input matrix

makeCacheMatrix <- function(x = matrix()) {
                inverse <- NULL
		set <- function(y) {
		x <<- y
		inverse <<- NULL
		}
SetInverse<-function(y){
            inverse <<- y
		}
		get <- function() x
		GetInverse <- function() inverse
		list(set = set, get = get,
		SetInverse = SetInverse,
		GetInverse = GetInverse)
}


}


## Write a short comment describing this function
## This function computes the inverse of a special matrix returned by makeCacheMatrix. If the inverse is already done, then the Cachesolve will display the cached versions
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$GetInverse ()
    		if(!is.null(inverse)) {
			message("Retrieve Cached Data")
			return(inverse)
		}
		
		message("Calculate the Inverse and cache it")
		data <- x$get()
		inverse <- solve(data, ...)
		x$SetInverse(inverse)
		inverse 

}
