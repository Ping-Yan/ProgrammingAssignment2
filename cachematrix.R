## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function  create a special matrix, which is a list
##containing function to set, get the matrix,set, get the reverse matrix
makeCacheMatrix <- function(x = matrix()) {
elc<-NULL
set<-FUNCTION(Y){
x<<-y
elc<<-NULL
}
get<-function() x
setreverse<-function(reverse) elc<<-reverse
getreverse<-function() elc 
list(set=set, get=get,
setreverse=setreverse,
getreverse=getreverse)
}


## Write a short comment describing this function
## if the reverse is already exist, this function return the message
## and the value of reverse matrix, if not, it caculate it.


cacheSolve <- function(x, ...) {
elc<-x$getreverse()
if(!is.null(elc)){
message('getting cached reversed matrix')
return(elc)
}
elc<-solve(x$get())
x$setreverse(elc)
elc
}
        ## Return a matrix that is the inverse of 'x'
}
