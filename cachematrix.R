## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##crearting a speacial matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  ##initialize the inverse property
  i <- NULL
  ##method to set the matrix
  set <- function(matrix) {
    m <<- matrix
    i <<- NULL
  }
  ##method to get the matrix
  get <- function() {
    m
  }
  ##method to set the inverse of the matrix
  setinverse <- function(inverse) {
    i <<- inverse
  }
  ##method to get the inverse of the matrix
  getinverse <- function() {
    i
  }
  
  ##return the list of the methods
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

##compute the inverse of the special matrix created by matrix
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  ##returns if the inverse is in the matrix
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  ##get the matrix from the object
  data <- x$get()
  ##calculate the inverse 
  m <- solve(data) %*% data
  ##set the inverse
  x$setinverse(m)
  ##return the matrix
  m
}
