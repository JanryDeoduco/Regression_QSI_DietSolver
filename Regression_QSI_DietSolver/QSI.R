#used for getting the values of a, b, and c
GaussJordanMethod<- function(matrix){ #gauss jordan function
  n = nrow(matrix)
  matrixList = list()
  for(i in 1:n){ #iteration of columns
    matrixList = c(matrixList, list(matrix))
    if(i != n){
      pivot_position = which.max(abs(matrix[i:n, i])) + i - 1 #finding the highest absolute value for pivot position
      pivot_row = matrix[pivot_position, ]
      
      if (pivot_row[i] == 0) { #no solution
        return(NA)
      }
      
      #swapping/partial pivoting
      temp <- matrix[i,]
      matrix[i,] <- pivot_row
      matrix[pivot_position, ] <- temp   
    }
    #normalizing
    matrix[i, ] = matrix[i, ]/matrix[i,i]
    
    for(j in 1:n){
      if (i==j){
        next;
      }
      
      #finding normalized row
      normalizedRow = matrix[j,i] * matrix[i, ]
      #find a[j,]: a[j,] - NORMALIZED ROW/making the value zero
      matrix[j, ] = matrix[j, ] - normalizedRow
    }
    matrixList = c(matrixList, list(matrix))
  }
  variables = c() #vector of variables
  
  for(o in 1:ncol(matrix)){
    if (o==ncol(matrix)){
      break;
    }
    variables = c(variables, paste0("x", o))
  }
  
  result = list(variables, matrix, as.vector(matrix[,n+1]), matrixList) 
  return(result)
}


QSI <- function(mat, x){
  #Construct a table
  table = matrix(0, ncol=3*(nrow(mat)-1), nrow=3*(nrow(mat)-1))
  
  column = 1
  iter = 1
  firstHalf = 1
  #directly add the equation to the matrix
  for (i in 1:((nrow(mat)-1)*2)){ #for rows
    #for columns
    table[i,column] = ((mat[iter,1])^2)
    table[i,column+1] = ((mat[iter,1])^1)
    table[i,column+2] = ((mat[iter,1])^0)
    if (i %% 2 != 0){ #changes the value every 2 iterations
      iter = iter + 1
    }
    if (i %% 2 == 0){
      column = column + 3
    }
    
    firstHalf = i
    
  }
  
  column = 1
  #for remaining rows
  for (i in (firstHalf + 1):(nrow(table)-1)){
    table[i,column] = 2*mat[i-(firstHalf-1),1]
    table[i, column + 1] = 1
    table[i,column + 3] = (2*mat[i-(firstHalf-1),1])*(-1)
    table[i, column + 4] = -1
    column = column + 3
  }
  
  #assuming first spline is linear
  #a1 = 0
  table[nrow(table), 1] = 1
  
  #make a vector for rhs
  rhsVector = c()
  #add the first number
  rhsVector = c(rhsVector, mat[1,2])
  #add the interior numbers
  for (i in 2:(nrow(mat)-1)){
    rhsVector = c(rhsVector,mat[i,2])
    rhsVector = c(rhsVector,mat[i,2])
  }
  
  #add the last number
  rhsVector = c(rhsVector, mat[nrow(mat),2])
  
  
  #add remaining 0's
  for (i in (length(rhsVector)+1):nrow(table)){
    rhsVector = c(rhsVector,0)
  }
  
  
  #cbind the vector to the matrix
  table = cbind(table, rhsVector)
  
  #Use gauss jordan in finding a, b, and c
  rhs = GaussJordanMethod(table)[[3]]
  
  #Store the rhs in the matrix
  rhsMatrix = matrix(rhs, byrow=T,nrow=(length(rhs)/3), ncol=3)
  
  
  #Getting the function for each interval
  #code for polynomial_string
  
  
  functions = c() #initialize list of functions for each intervals
  intervals = c()
  for(i in 1:nrow(rhsMatrix)){
    function_string = ""
    function_string = paste0(function_string, "function(x) ")
    function_string = paste0(function_string, as.character(rhsMatrix[i,1]), "*(x^2) + ", as.character(rhsMatrix[i,2]), "*x + ", as.character(rhsMatrix[i,3]))
    functions = c(functions, function_string)
    interval = paste0(as.character(mat[i,1]), " <= x <= ", as.character(mat[i+1,1]))
    intervals = c(intervals, interval)
  }
  
  
  
  functionFound = FALSE 
  
  #finding the estimate using the right interval
  for (i in 1:(nrow(mat)-1)){
    if (x >= mat[i,1] && x <= mat[i+1,1]){
      #use the specific function from the interval
      realFunction = eval(parse(text=functions[i]))
      stringFunction = functions[i]
      interval = paste0(as.character(mat[i,1]), " <= x <= ", as.character(mat[i+1,1]))
      functionFound = TRUE
    }
  }
  
  if (functionFound == FALSE){
    realFunction = NULL
  }
  
  print(realFunction)
  
  
  
  #Finding the estimate
  estimate = realFunction (x)
  estimate = deparse(estimate)
  # Assemble the output list
  output <- list(
    intervals = functions,
    fxn = realFunction,
    estimate = estimate,
    fxn_string = stringFunction,
    x_interval = interval,
    mat_iter = GaussJordanMethod(table)[[4]],
    Intervals = intervals
  )
  
  return(output)
}

############SAMPLE INPUT###########
 #mat = matrix(c(9, 15, 16.5, 20, 4, 6.1, 2, 2.3), nrow= 4, ncol= 2)
 #print(QSI(mat, x=19))

#file_path <- "C:/Users/Janry/Documents/CMSC_150_PROJECT/input_QSI.csv"

#Read the CSV file and store its content in a data frame
  #data <- read.csv(file_path, header=F)
 # 
  #x = 19
  #res = QSI(mat, x) #polynomial regression function call
 # 
  #print(mat)
