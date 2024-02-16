makeCacheMatrix <- function(x = matrix()) {
invrs<-NULL
    set<-function(y) {
        x<-y
        invrs<-NULL
    }
    get<-function() x
    setinverse<-function(inverse)inverse<-invrs
    getinverse<-function()invrs
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

cacheSolve <- function(x,) {
 invrs<=x$getinverse()
    if(!is.null(invrs)) {
        message("getting data from cache")
        return(invrs)
    }
    mat<-x$get()
    invrs<-solve(mat,)
    x$setinverse(invrs)
    invrs
}
