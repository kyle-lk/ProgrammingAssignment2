## Hello, my name is kyle Liu, This is my mini program for week 3 assignment
## create a function calculate inverse matrix by memory saving method


## I create 4 variables in function makeCacheMatrix(),each used to create an
## memory site when load a matrix
## makesure your input matrix is not singular
makeCacheMatrix <- function(x = matrix()) {
    InverseMatrix <- NULL
    setMatrix <- function(y) {
                 x <<- y
                 InverseMatrix <<- NULL
    }				 
    get <- function() x
	Inverse <- function(InverseM) InverseMatrix <<- InverseM
	getInverseM <- function() InverseMatrix
	list(setMatrix = setMatrix,
	     get = get,
		 Inverse = Inverse,
		 getInverseM = getInverseM
		 )
}


## function cacheSolve() used to inverse matrix 'x'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
              InverseMatrix <- x$getInverseM()
			  if(!is.null(InverseMatrix)){
			              message("getting cached data")
						  return(InverseMatrix)
			  }
              matrix_x <- x$get()
              InverseMatrix <- solve(matrix_x)
              InverseMatrix			  
}
