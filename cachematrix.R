## makeCacheMatrix converts the cached object so that it can be used as an argument in the cacheSolve function

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
    setmatrix=setmatrix,
    getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("retrieving data")
      return(m)
    }
    matrix<-x$get
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}        ## Return a matrix that is the inverse of 'x'

