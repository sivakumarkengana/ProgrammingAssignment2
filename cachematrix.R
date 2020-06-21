Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@sivakumarkengana 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.


aaronchen914
/
ProgrammingAssignment2
forked from rdpeng/ProgrammingAssignment2
0
0126k
 Code
 Pull requests 0 Actions
 Projects 0
 Wiki
 Security 0
 Insights
ProgrammingAssignment2/cachematrix.R
@aaronchen914 aaronchen914 Update cachematrix.R
dbfba1a 4 hours ago
@rdpeng@aaronchen914
44 lines (37 sloc)  1.33 KB
  
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The function "makeCacheMatrix" will creates a 
## special matrix object that can cache the inverse of
## the oringinal matrix.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL  ## initalize the inv to null
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
             getInverse = getInverse) ## create a list containing the opt
}


## Write a short comment describing this function

## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already
## been calculated (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
© 2020 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
