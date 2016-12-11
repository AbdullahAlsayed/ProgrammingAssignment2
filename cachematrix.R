## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function creates a matrix that can be inversed and its inverse can be cached
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function (newMatrix)
  {
    x <<- newMatrix
    inverse <<- NULL
  }
  get <- function() x
  setInverseMatrix <- function(inv) inverse <- inv
  getInverseMatrix <- function() inverse
  lits(set = set, get = get, setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix)
}

#this function is responsible for computing the inverse of the original matrix and handling
#if the inverse not being set and return the inverse matrix
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invMat <- x$getInverseMatrix()
  if (!is.null(invMat))
  {
    message("Cached data: ")
    return(invMat)
  }
  orgMat <- x$get()
  invMat <- solve(orgmat, ...)
  x$setInverseMatrix(invMat)
  invMat
  ## Return a matrix that is the inverse of 'x'
}
