

makeCacheMatrix <- function(x = matrix()) {
  
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setInv <- function(Inv) I <<- Inv
  getInv <- function() I
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}



cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  <- function(x, ...) {
    I <- x$getInv()
    if(!is.null(I)) {
      message("getting cached data")
      return(I)
    }
    data <- x$get()
    I <- solve(x)
    x$getInv(I)
    I
}