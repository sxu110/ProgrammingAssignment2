## There are two functions written in this file. 
## In the first function called "makeCacheMatrix", it works in a way that its output will be inverted and stored in a cache. The second function is called "cacheSolve". It works in a manner where, in cases of a same matrix and an existing inverse, the cache will be utilized to generate the inverse for the value of interest.

## The first function is called "makeCacheMatrix", where the output of this function will be inverted and stored in a cache. 

makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(z)
    x <<- z
    n <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) n <<- inverse
  getinverse <- function() n
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The second function is called "cacheSolve", where, in cases of a same matrix and an existing inverse, the cache will be utilized to generate the inverse of the value of interest. 

cacheSolve <- function(x, matrix()) {
  n <- x$getinverse()
  if(!is.null(n)){
          message("the inverse that has been stored in the cache will be generated")
          return(n)
  }
  data <- x$get()
  n <- inverse(data, ...)
  x$setinverse(n)
  n
}
