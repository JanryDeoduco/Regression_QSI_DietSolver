#Janry Deoduco  
#2022-01978
#CMSC 150 B4L


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


PolynomialRegression <- function (integer, list, inputValue){
  if (integer < 1){
    return (NA)
  }
  
  if (length(list[[1]]) != length(list[[2]])){
    return(NA)
  }
  
  
  
  
  #finding n
  n = length(list[[1]])
  
  #getting the summation of a
  sumofa = sum(list[[1]])
  
  #getting the summation of b
  sumofb = sum(list[[2]])
  
  
  
  
  
  
  #getting the mean of a
  meanofa = mean(list[[1]])
  
  #getting the mean of b
  meanofb = mean(list[[2]])
  
  
  #making an empty augcoeffmatrix
  augcoeffmatrix = matrix(0, nrow=integer+1, ncol=integer+2)
  
  
  #iteration for row
  iteration = 0
  col = 1
  
  
  #nested loop
  for(k in integer:(integer*2)){ #loop for rows
    col = 1
    for(l in iteration:k){ #loop for columns
      
      #making new exponent vector
      exponentVector = c()
      for (s in 1:length(list[[2]])){
        #raise to l
        exponent = (list[[1]][s])^l
        exponentVector = c(exponentVector, exponent)
      }
      
      #getting the summation of a^l
      sumofExponent = sum(exponentVector)
      
      #plug the value of summation into matrix
      augcoeffmatrix[iteration+1, col] = sumofExponent
      col = col + 1
      
    }
    iteration = iteration + 1
    
  }
  
  #loop for plugging RHS
  for(t in 0:integer){
    #getting the summation of the product of ab
    
    #getting list of ab
    ab = c()
    for (i in 1:length(a)){
      #multiply
      product = (list[[1]][i]^t) * list[[2]][[i]]
      ab = c(ab, product)
      
      #getting the summation of ab
      sumofab = sum(ab)
      
      #plug the summation to matrix
      augcoeffmatrix[t+1, ncol(augcoeffmatrix)] = sumofab
    }
  }
  coefficients = GaussJordanMethod(augcoeffmatrix)[[3]] #calls gaussjordan function for coefficients
  
  
  #code for polynomial_string
  polynomial_string = ""
  polynomial_string = paste0(polynomial_string, "function(x) ")
  polynomial_string = paste0(polynomial_string, as.character(coefficients[1]), " + ")
  
  #making polynomial
  for (o in 2:(integer+1)){
    if(o != integer+1){
      polynomial_string = paste0(polynomial_string, as.character(coefficients[o]), " * x^", o-1, " + ")
    }
    
    else{
      polynomial_string = paste0(polynomial_string, as.character(coefficients[o]), " * x^", o-1)
    }
  }
  
  
  #code for polynomial_function
  polynomial_function = eval(parse(text=polynomial_string))
  
  estimate = polynomial_function (inputValue)
  
  # result = list(augcoeffmatrix, coefficients, polynomial_string, polynomial_function, estimate)
  
  result = list(augcoeffmatrix = augcoeffmatrix,
                coefficients = coefficients,
                polynomial_string = polynomial_string,
                polynomial_function = polynomial_function,
                estimate = estimate,
                mat_iter = GaussJordanMethod(augcoeffmatrix)[[4]]
                
                
                
  )
  
  
  #names(result) = c("augcoeffmatrix", "coefficients", "polynomial_string", "polynomial_function", "estimate")
  return (result)
  
  
  
}



#file_path <- "input_Regression.csv"

#Read the CSV file and store its content in a data frame
 #data <- read.csv(file_path, header=F)
 
 
 
 
 
 
 
 
 
 
 
# 
# print(data)
# 
# print(data[1,1])

 #a = c(100, 150, 200, 250, 300, 400, 500, 600, 650, 700, 750, 800, 850, 900, 950, 1000)
 #b = c(36.0, 33.8, 33.0, 32.4, 31.8, 30.8, 29.3, 27.6, 26.7, 25.8, 24.9, 24.1, 23.4, 22.8, 21.1, 21.4)
#a = c(0)
#b = c(0)
  #lista = list(data[,1],data[,2])
  #degree = 4
  #inputValue = 150
# 
   #res = PolynomialRegression(degree, list(a,b), inputValue) #polynomial regression function call
   #print(res)
