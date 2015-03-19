<<<<<<< HEAD
## makeCacheMatrix() and cacheSolve allow you to store the inverse of a matrix 
## in your cache and call when you need it for future analysis. 

## Makes a special matrix that can cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {

    cm <- NULL
    
    set <- function(y){
        
        x <<- y
        
        cm <<- NULL
        
    }
    
    get <- function() x
    setinverse <- function(solve) cm <<- solve
    getinverse <- function() cm
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
    
    
}


## Solves the inverse of makeCacheMatrix or gets inverse from cache if already
## solved. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    cm <- x$getinverse()
    
    if(!is.null(cm)){
        message("getting cached data")
        return(cm)
        
    }
    
    data <- x$get()
    cm <- solve(data, ...)
    x$setinverse(cm)
    cm 
    
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
