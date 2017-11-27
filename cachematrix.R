## Put comments here that give an overall description of what your
## functions do

### This function saves matrix from input to cache, gets that matrix, then makes inverse matrix and gets it.

makeCacheMatrix <- function(x = matrix()) {
        
        # 0. creating empty variable to use in function.
        # 1. assigning matrix to function itself by set_base parameter
        # 2. getting previously created matrix get_base parameter
        # 3. creating new inverse matrix if no input present or taking previously created inverse matirx there is apropriate input on set_solved. caching result.
        # 4. geting previously created inverse matrix
        
        # 0.
        x_solved <- NULL
        
        # 1.
        set_base <- function(x2) {
                x_solved <<- NULL
                x <<- x2
        }
        
        # 2.
        get_base <- function() x
        
        # 3. creating new inverse matrix if no input present or taking previously created inverse matirx there is apropriate input on set_solved. caching result.
        set_solved <- function(x_solved) x_solved <<- solve(x)
        
        # 4.
        get_solved <- function() x_solved
        
        list (set_base=set_base, get_base=get_base, set_solved=set_solved, get_solved=get_solved)
}


### This function takes inverse matrix from cache, if there is no cached matrix, then creates new one inerted matrix from previously created and shows it 

cacheSolve <- function(x){
        
        # 1. getting inverse matrix 
        # 2. checking if there is chached matrix
        # 3. if not then creates new inverse matrix, stores it in the cache and prints message about creating new inverse matrix
        # 4. if there is already created and cached inverse matrix then just print message about it
        # 5. return inverse matrix
        
        # 1. 
        x_solved <- x$get_solved()
        
        # 2.
        if (is.null(x_solved)) {
        # 3.                
                print("generating new inverse matrix and caching it")
                x_solved <- solve(x$get_base())
                x$set_solved(x_solved)
        } else {
        # 4.
                print("getting inverse matrix from cache")
        }
        
        # 5.
        x_solved
}
