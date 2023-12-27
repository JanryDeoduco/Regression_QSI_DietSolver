options(max.print = 5000) 

minFoodServing = 0
maxFoodServing = 10

minNutrient = c(2000, 0, 0, 0, 0, 25, 50, 5000, 50, 800, 10)
maxNutrient = c(2250, 300, 65, 2400, 300, 100, 100, 50000, 20000, 1600, 30)

Frozen_Broccoli <- c(73.8, 0, 0.8, 68.2, 13.6, 8.5, 8, 5867.4, 160.2, 159, 2.3, 0.16)

print(Frozen_Broccoli[1])
Carrots_Raw <- c(23.7, 0, 0.1, 19.2, 5.6, 1.6, 0.6, 15471, 5.1, 14.9, 0.3, 0.07)
Celery_Raw <- c(6.4, 0, 0.1, 34.8, 1.5, 0.7, 0.3, 53.6, 2.8, 16, 0.2, 0.04)
Frozen_Corn <- c(72.2, 0, 0.6, 2.5, 17.1, 2, 2.5, 106.6, 5.2, 3.3, 0.3, 0.18)
Lettuce_Iceberg_Raw <- c(2.6, 0, 0, 1.8, 0.4, 0.3, 0.2, 66, 0.8, 3.8, 0.1, 0.02)
Peppers_Sweet_Raw <- c(20, 0, 0.1, 1.5, 4.8, 1.3, 0.7, 467.7, 66.1, 6.7, 0.3, 0.53)
Potatoes_Baked <- c(171.5, 0, 0.2, 15.2, 39.9, 3.2, 3.7, 0, 15.6, 22.7, 4.3, 0.06)
Tofu <- c(88.2, 0, 5.5, 8.1, 2.2, 1.4, 9.4, 98.6, 0.1, 121.8, 6.2, 0.31)
Roasted_Chicken <- c(277.4, 129.9, 10.8, 125.6, 0, 0, 42.2, 77.4, 0, 21.9, 1.8, 0.84)
Spaghetti_Sauce <- c(358.2, 0, 12.3, 1237.1, 58.3, 11.6, 8.2, 3055.2, 27.9, 80.2, 2.3, 0.78)
Tomato_Red_Ripe_Raw <- c(25.8, 0, 0.4, 11.1, 5.7, 1.4, 1, 766.3, 23.5, 6.2, 0.6, 0.27)
Apple_Raw_Skin <- c(81.4, 0, 0.5, 0, 21, 3.7, 0.3, 73.1, 7.9, 9.7, 0.2, 0.24)
Banana <- c(104.9, 0, 0.5, 1.1, 26.7, 2.7, 1.2, 92.3, 10.4, 6.8, 0.4, 0.15)
Grapes <- c(15.1, 0, 0.1, 0.5, 4.1, 0.2, 0.2, 24, 1, 3.4, 0.1, 0.32)
Kiwifruit_Raw_Fresh <- c(46.4, 0, 0.3, 3.8, 11.3, 2.6, 0.8, 133, 74.5, 19.8, 0.3, 0.49)


Oranges <- c(61.6, 0, 0.2, 0, 15.4, 3.1, 1.2, 268.6, 69.7, 52.4, 0.1, 0.15)
Bagels <- c(78, 0, 0.5, 151.4, 15.1, 0.6, 3, 0, 0, 21, 1, 0.16)
Wheat_Bread <- c(65, 0, 1, 134.5, 12.4, 1.3, 2.2, 0, 0, 10.8, 0.7, 0.05)
White_Bread <- c(65, 0, 1, 132.5, 11.8, 1.1, 2.3, 0, 0, 26.2, 0.8, 0.06)
Oatmeal_Cookies <- c(81, 0, 3.3, 68.9, 12.4, 0.6, 1.1, 2.9, 0.1, 6.7, 0.5, 0.09)
Apple_Pie <- c(67.2, 0, 3.1, 75.4, 9.6, 0.5, 0.5, 35.2, 0.9, 3.1, 0.1, 0.16)
Chocolate_Chip_Cookies <- c(78.1, 5.1, 4.5, 57.8, 9.3, 0, 0.9, 101.8, 0, 6.2, 0.4, 0.03)
Butter_Regular <- c(35.8, 10.9, 4.1, 41.3, 0, 0, 0, 152.9, 0, 1.2, 0, 0.05)
Cheddar_Cheese <- c(112.7, 29.4, 9.3, 173.7, 0.4, 0, 7, 296.5, 0, 202, 0.2, 0.25)
Whole_Milk <- c(149.9, 33.2, 8.1, 119.6, 11.4, 0, 8, 307.4, 2.3, 291.3, 0.1, 0.16)
Lowfat_Milk <- c(121.2, 18.3, 4.7, 121.8, 11.7, 0, 8.1, 500.2, 2.3, 296.7, 0.1, 0.23)
Skim_Milk <- c(85.5, 4.4, 0.4, 126.2, 11.9, 0, 8.4, 499.8, 2.4, 302.3, 0.1, 0.13)
Poached_Eggs <- c(74.5, 211.5, 5, 140, 0.6, 0, 6.2, 316, 0, 24.5, 0.7, 0.08)
Scrambled_Eggs <- c(99.6, 211.2, 7.3, 168, 1.3, 0, 6.7, 409.2, 0.1, 42.6, 0.7, 0.11)
Bologna_Turkey <- c(56.4, 28.1, 4.3, 248.9, 0.3, 0, 3.9, 0, 0, 23.8, 0.4, 0.15)
Frankfurter_Beef <- c(141.8, 27.4, 12.8, 461.7, 0.8, 0, 5.4, 0, 10.8, 9, 0.6, 0.27)
Ham_Sliced <- c(37.1, 13.3, 1.4, 405.1, 0.3, 0, 5.5, 0, 7.4, 2, 0.2, 0.33)
Kielbasa_Pork <- c(80.6, 17.4, 7.1, 279.8, 0.6, 0, 3.4, 0, 5.5, 11.4, 0.4, 0.15)
CapN_Crunch <- c(119.6, 0, 2.6, 213.3, 23, 0.5, 1.4, 40.6, 0, 4.8, 7.5, 0.31)


Cheerios <- c(111, 0, 1.8, 307.6, 19.6, 2, 4.3, 1252.2, 15.1, 48.6, 4.5, 0.28)
Corn_Flakes <- c(110.5, 0, 0.1, 290.5, 24.5, 0.7, 2.3, 1252.2, 15.1, 0.9, 1.8, 0.28)
Raisin_Bran <- c(115.1, 0, 0.7, 204.4, 27.9, 4, 4, 1250.2, 0, 12.9, 16.8, 0.34)
Rice_Krispies <- c(112.2, 0, 0.2, 340.8, 24.8, 0.4, 1.9, 1252.2, 15.1, 4, 1.8, 0.32)
Special_K <- c(110.8, 0, 0.1, 265.5, 21.3, 0.7, 5.6, 1252.2, 15.1, 8.2, 4.5, 0.38)
Oatmeal <- c(145.1, 0, 2.3, 2.3, 25.3, 4, 6.1, 37.4, 0, 18.7, 1.6, 0.82)
Malt_O_Meal_Choc <- c(607.2, 0, 1.5, 16.5, 128.2, 0, 17.3, 0, 0, 23.1, 47.2, 0.52)
Pizza_W_Pepperoni <- c(181, 14.2, 7, 267, 19.9, 0, 10.1, 281.9, 1.6, 64.6, 0.9, 0.44)
Taco <- c(369.4, 56.4, 20.6, 802, 26.7, 0, 20.7, 855, 2.2, 220.6, 2.4, 0.59)
Hamburger_W_Toppings <- c(275, 42.8, 10.2, 563.9, 32.7, 0, 13.6, 126.3, 2.6, 51.4, 2.5, 0.83)
Hotdog_Plain <- c(242.1, 44.1, 14.5, 670.3, 18, 0, 10.4, 0, 0.1, 23.5, 2.3, 0.31)
Couscous <- c(100.8, 0, 0.1, 4.5, 20.9, 1.3, 3.4, 0, 0, 7.2, 0.3, 0.39)
White_Rice <- c(102.7, 0, 0.2, 0.8, 22.3, 0.3, 2.1, 0, 0, 7.9, 0.9, 0.08)

Macaroni_Ckd <- c(98.7, 0, 0.5, 0.7, 19.8, 0.9, 3.3, 0, 0, 4.9, 1, 0.17)
Peanut_Butter <- c(188.5, 0, 16, 155.5, 6.9, 2.1, 7.7, 0, 0, 13.1, 0.6, 0.07)
Pork <- c(710.8, 105.1, 72.2, 38.4, 0, 0, 13.8, 14.7, 0, 59.9, 0.4, 0.81)
Sardines_in_Oil <- c(49.9, 34.1, 2.7, 121.2, 0, 0, 5.9, 53.8, 0, 91.7, 0.7, 0.45)
White_Tuna_in_Water <- c(115.6, 35.7, 2.1, 333.2, 0, 0, 22.7, 68, 0, 3.4, 0.5, 0.69)
Popcorn_Air_Popped <- c(108.3, 0, 1.2, 1.1, 22.1, 4.3, 3.4, 55.6, 0, 2.8, 0.8, 0.04)
Potato_Chips_Bbqflvr <- c(139.2, 0, 9.2, 212.6, 15, 1.2, 2.2, 61.5, 9.6, 14.2, 0.5, 0.22)
Pretzels <- c(108, 0, 1, 486.2, 22.5, 0.9, 2.6, 0, 0, 10.2, 1.2, 0.12)
Tortilla_Chip <- c(142, 0, 7.4, 149.7, 17.8, 1.8, 2, 55.6, 0, 43.7, 0.4, 0.19)
Chicknoodl_Soup <- c(150.1, 12.3, 4.6, 1862.2, 18.7, 1.5, 7.9, 1308.7, 0, 27.1, 1.5, 0.39)
Splt_PeaHamsoup <- c(184.8, 7.2, 4, 964.8, 26.8, 4.1, 11.1, 4872, 7, 33.6, 2.1, 0.67)
Vegetbeef_Soup <- c(158.1, 10, 3.8, 1915.1, 20.4, 4, 11.2, 3785.1, 4.8, 32.6, 2.2, 0.71)
Neweng_Clamchwd <- c(175.7, 10, 5, 1864.9, 21.8, 1.5, 10.9, 20.1, 4.8, 82.8, 2.8, 0.75)
Tomato_Soup <- c(170.7, 0, 3.8, 1744.4, 33.2, 1, 4.1, 1393, 133, 27.6, 3.5, 0.39)
NewE_Clamchwd_W_Mlk <- c(163.7, 22.3, 6.6, 992, 16.6, 1.5, 9.5, 163.7, 3.5, 186, 1.5, 0.99)
Crm_Mshrm_Soup_W_Mlk <- c(203.4, 19.8, 13.6, 1076.3, 15, 0.5, 6.1, 153.8, 2.2, 178.6, 0.6, 0.65)
Beanbacn_Soup_W_Watr <- c(172, 2.5, 5.9, 951.3, 22.8, 8.6, 7.9, 888, 1.5, 81, 2, 0.67)



food_list <- list(
  Frozen_Broccoli,
  Carrots_Raw,
  Celery_Raw,
  Frozen_Corn,
  Lettuce_Iceberg_Raw,
  Peppers_Sweet_Raw,
  Potatoes_Baked,
  Tofu,
  Roasted_Chicken,
  Spaghetti_Sauce,
  Tomato_Red_Ripe_Raw,
  Apple_Raw_Skin,
  Banana,
  Grapes,
  Kiwifruit_Raw_Fresh,
  Oranges,
  Bagels,
  Wheat_Bread,
  White_Bread,
  Oatmeal_Cookies,
  Apple_Pie,
  Chocolate_Chip_Cookies,
  Butter_Regular,
  Cheddar_Cheese,
  Whole_Milk,
  Lowfat_Milk,
  Skim_Milk,
  Poached_Eggs,
  Scrambled_Eggs,
  Bologna_Turkey,
  Frankfurter_Beef,
  Ham_Sliced,
  Kielbasa_Pork,
  CapN_Crunch,
  Cheerios,
  Corn_Flakes,
  Raisin_Bran,
  Rice_Krispies,
  Special_K,
  Oatmeal,
  Malt_O_Meal_Choc,
  Pizza_W_Pepperoni,
  Taco,
  Hamburger_W_Toppings,
  Hotdog_Plain,
  Couscous,
  White_Rice,
  Macaroni_Ckd,
  Peanut_Butter,
  Pork,
  Sardines_in_Oil,
  White_Tuna_in_Water,
  Popcorn_Air_Popped,
  Potato_Chips_Bbqflvr,
  Pretzels,
  Tortilla_Chip,
  Chicknoodl_Soup,
  Splt_PeaHamsoup,
  Vegetbeef_Soup,
  Neweng_Clamchwd,
  Tomato_Soup,
  NewE_Clamchwd_W_Mlk,
  Crm_Mshrm_Soup_W_Mlk,
  Beanbacn_Soup_W_Watr
)

food_names <- list(
  "Frozen_Broccoli",
  "Carrots_Raw",
  "Celery_Raw",
  "Frozen_Corn",
  "Lettuce_Iceberg_Raw",
  "Peppers_Sweet_Raw",
  "Potatoes_Baked",
  "Tofu",
  "Roasted_Chicken",
  "Spaghetti_Sauce",
  "Tomato_Red_Ripe_Raw",
  "Apple_Raw_Skin",
  "Banana",
  "Grapes",
  "Kiwifruit_Raw_Fresh",
  "Oranges",
  "Bagels",
  "Wheat_Bread",
  "White_Bread",
  "Oatmeal_Cookies",
  "Apple_Pie",
  "Chocolate_Chip_Cookies",
  "Butter_Regular",
  "Cheddar_Cheese",
  "Whole_Milk",
  "Lowfat_Milk",
  "Skim_Milk",
  "Poached_Eggs",
  "Scrambled_Eggs",
  "Bologna_Turkey",
  "Frankfurter_Beef",
  "Ham_Sliced",
  "Kielbasa_Pork",
  "CapN_Crunch",
  "Cheerios",
  "Corn_Flakes",
  "Raisin_Bran",
  "Rice_Krispies",
  "Special_K",
  "Oatmeal",
  "Malt_O_Meal_Choc",
  "Pizza_W_Pepperoni",
  "Taco",
  "Hamburger_W_Toppings",
  "Hotdog_Plain",
  "Couscous",
  "White_Rice",
  "Macaroni_Ckd",
  "Peanut_Butter",
  "Pork",
  "Sardines_in_Oil",
  "White_Tuna_in_Water",
  "Popcorn_Air_Popped",
  "Potato_Chips_Bbqflvr",
  "Pretzels",
  "Tortilla_Chip",
  "Chicknoodl_Soup",
  "Splt_PeaHamsoup",
  "Vegetbeef_Soup",
  "Neweng_Clamchwd",
  "Tomato_Soup",
  "NewE_Clamchwd_W_Mlk",
  "Crm_Mshrm_Soup_W_Mlk",
  "Beanbacn_Soup_W_Watr"
)

print(length(food_names))



initialTableau <- function(foods, minNutrient, maxNutrient, minFoodServing, maxFoodServing){
  #initialize a matrix for constraints
  table = matrix(
    0, nrow = 22 + length(foods) + 1, ncol = length(foods) + 1
  )
  
  #naming the rows
  nutrientNamesMax = c("Calories", "Cholesterol", "Total Fat", "Sodium", "Carbohydrates", "Dietary Fiber", "Protein", "Vitamin A", "Vitamin C", "Calcium", "Iron")
  nutrientNamesMin = c("Calories", "Cholesterol", "Total Fat", "Sodium", "Carbohydrates", "Dietary Fiber", "Protein", "Vitamin A", "Vitamin C", "Calcium", "Iron")
  servings = paste("x", 1:length(foods), sep = "")
  rownames(table) = c(nutrientNamesMax, nutrientNamesMin, servings, "Cost")
  
  #naming the columns
  foodName = paste("x", 1:length(foods), sep = "")
  #slackVariables = paste("s", 1:(length(foods)+22), sep = "")
  #colnames(table) = c(foodName, slackVariables, "-Z", "Solution")
  
  
  
  #plot in the constraints for nutrients first
  #loop for rows of max nutrients
  for (j in 1:11){
    #loop for columns of servings
    for (i in 1:length(foods)){
      table[j,i] = foods[[i]][j]
    }
    #assign value for solution
    table[j,ncol(table)] = maxNutrient[j]
  }
  
  #loop for rows of min nutrients
  for (j in 12:22){
    #loop for columns of servings
    for (i in 1:length(foods)){
      table[j,i] = foods[[i]][j-11]
    }
    #assign value for solution
    table[j,ncol(table)] = minNutrient[j-11]
  }
  
  #loop for rows of servings
  for (j in 23:(22+length(foods))){
    #loop for columns of serving
    for (a in 1:length(foods)){
      if (j-22 == a){
        table[j,a] = 1
      }
    }
    
    
    #plot the max value of servings
    table[j,ncol(table)] = maxFoodServing
  }
  
  #plot for the last row for costs
  for (i in 1:length(foods)){
    table[nrow(table),i] = (foods[[i]][length(foods[[1]])] )* (-1)
  }
  
  
  #add the z value and solution of last row
  table[nrow(table), (ncol(table))] = 1
  
  
  #changing the sign ">=" into "<="
  for (j in 1:11){
    for (i in 1:length(foods)){
      table[j,i] = table[j,i] * (-1)
    }
    
    table[j,ncol(table)] = table[j,ncol(table)] * (-1)
  }
  
  for (i in 1:length(foods)){
    table[nrow(table),i] = table[nrow(table),i] * (-1)
  }
  
  for (j in 23:(nrow(table)-1)){
    for (i in 1:length(foods)){
      table[j,i] = table[j,i] * (-1)
    }
    table[j,ncol(table)] = table[j,ncol(table)] * (-1)
  }
  
  
  #transpose the table
  table = t(table)
  tempVector = table[ ,ncol(table)]
  #unbind the last columm
  table = table[,-ncol(table)]
  
  #make a matrix for slacks and 1 z column
  slackTable = diag(1, nrow = nrow(table), ncol = (length(foods)+1))
  #bind the slack matrix
  table = cbind(table,slackTable)
  
  #bind the tempVector
  table = cbind(table, tempVector)
  
  #make the last column, last row 0
  table[nrow(table), ncol(table)] = 0
  
  #multiple the last row by -1
  table[nrow(table), ] = table[nrow(table), ] * (-1)
  table[nrow(table), (ncol(table)-1)] = table[nrow(table), (ncol(table)-1)] * (-1)
  
  num_columns <- 5
  column_names <- c()
  
  for (i in 1: (length(foods) + 22) ) {
    column_names = c(column_names, paste0("s", i))
  }
  
  for (j in 1: (length(foods))) {
    column_names = c(column_names, paste0("x", j))
  }
  column_names = c(column_names, "Z")
  
  column_names = c(column_names, "RHS")


  colnames(table) = c(column_names)
  
  return(table)
  
}

Simplex <- function(initialTableau, length, foodNames) {
  price = c(NULL)
  price = initialTableau[1:(nrow(initialTableau)-1),ncol(initialTableau)]
  # Initialize variables
  iterations = 0
  
  tableauList = list()
  basicSolutionList = list()
  basicSolution = matrix(0, nrow=1, ncol=(ncol(initialTableau)-1))
  
  
  column_names <- c(NULL)
  
  for (i in 1: (length + 22) ) {
    column_names = c(column_names, paste0("s", i))
  }
  
  for (j in 1: (length)) {
    column_names = c(column_names, paste0("x", j))
  }
  column_names = c(column_names, "Z")
  
  colnames(basicSolution) = c(column_names)
 
  
  while (TRUE) {
    
    iterations = iterations + 1
    # Initialize variables for pivot column selection
    pivotColumnIndex = NULL
    largestMagnitude = 0
    
    tableauList = c(tableauList, list(initialTableau))
    
    # Loop through columns to find the pivot column index
    for (i in 1:(ncol(initialTableau) - 1)) {
      if (initialTableau[nrow(initialTableau), i] < 0) {
        currentMagnitude = initialTableau[nrow(initialTableau), i]
        if (currentMagnitude <= largestMagnitude) {
          largestMagnitude = currentMagnitude
          pivotColumnIndex = i
        }
      }
    }
    
    # Exit loop if no pivot column found or largestMagnitude <= 0
    if (largestMagnitude >= 0) {
      break
    }
    
    # Extract pivot column and its magnitude
    pivotColumn = initialTableau[, pivotColumnIndex]
    
    # finding the pivot row
    lowestTR = Inf
    for (i in 1:(nrow(initialTableau) - 1)) {
      if (pivotColumn[i] != 0) {
        TR = initialTableau[i, ncol(initialTableau)] / pivotColumn[i]
        
        if (TR >= 0 && TR < lowestTR) {
          lowestTR = TR
          pivotRowIndex = i
          pivotElement = pivotColumn[i]
        }
      }
    }
    
    if (lowestTR == Inf){
      return(NULL);
    }
    
    if (pivotElement == 0){
      return(NULL)
    }
    
    # getting the normalized Pivot row
    nPR = initialTableau[pivotRowIndex, ] / pivotElement
    #normalize the pivot row
    initialTableau[pivotRowIndex, ] = nPR
    
    
    # gauss jordan method
    for (i in 1:nrow(initialTableau)) {
      if (i != pivotRowIndex) {
        C = initialTableau[i, pivotColumnIndex] # value to make 0
        
        initialTableau[i, ] = initialTableau[i, ] - (nPR * C)
      }
    }
    
    #Plotting the basic solution
    for (i in 1:(ncol(initialTableau)-1)){
      if (abs(sum(initialTableau[,i])) == 1){
        #find the value in the column that has 1 or -1 on it
        for (j in 1:(nrow(initialTableau))){
          if (abs(initialTableau[j,i]) == 1){
            #plot the basic solution
            basicSolution[1,i] = initialTableau[j,ncol(initialTableau)] / initialTableau[j,i]
            break
          } 
        }
      }
      
      else{
        basicSolution[1,i] = 0
      }
      
    }
    
    #add to the basic solution list
    basicSolutionList = c(basicSolutionList, list(basicSolution))
    
  }
  
  #plotting the final solution
  finalSolution = matrix(0, nrow=1, ncol=(ncol(initialTableau)-1))
  for (i in 1:(ncol(initialTableau)-1)){
    if (i == (ncol(initialTableau)-1)){
      finalSolution[1,i] = initialTableau[nrow(initialTableau), ncol(initialTableau)]
    }
    
    else{
      finalSolution[1,i] = initialTableau[nrow(initialTableau), i]
    }
  }
  
  column_names <- c(NULL)
  
  for (i in 1: (length + 22) ) {
    column_names = c(column_names, paste0("s", i))
  }
  
  for (j in 1: (length)) {
    column_names = c(column_names, paste0("x", j))
  }
  column_names = c(column_names, "Z")
  
  colnames(finalSolution) = c(column_names)
  ###########################################################
  
  
  output = list()
  finalServings = c()
  finalCost = c()
  
  
  #Getting the final solution
  # for (i in 1:length(foods)){
  #   #get the sum of each vector
  #   sumofVector = sum(initialTableau[ ,i])
  #   if (sumofVector == 1){
  #     for(j in 1:length(initialTableau[ ,i])){
  #       if (initialTableau[j,i] == 1){
  #         finalServings= c(finalServings,initialTableau[j, ncol(initialTableau)]) 
  #         finalCost = c(finalCost, cost[i] * initialTableau[j, ncol(initialTableau)])
  #       }
  #     }
  #     
  #   }
  #   
  # }
  rowCount = 0 #initialize row count for output table
  
  
  
  
  
  #finalOutput = matrix(0, nrow=length(foods), ncol=2)
  #colnames(finalOutput) = c("Servings", "Cost")
  
  
  rowIndex = 1  # Track the row index in finalOutput
  priceIndex = 1
  #plugging all of the minimum servings and price of each non zero food
  cost = 12
  
  servingSize = c(NULL)
  servingPrice = c(NULL)
  foodName = c(NULL)
 
 
  
  for (i in (ncol(finalSolution)-length):(ncol(finalSolution) - 1)) {
    # servingSize[rowIndex] = (finalSolution[1, i])
    # servingPrice[rowIndex] = servingSize[rowIndex] * price[rowIndex]
    if (initialTableau[nrow(initialTableau), i]  != 0){
      servingSize[rowIndex] = (finalSolution[1, i])
      servingPrice[rowIndex] = servingSize[rowIndex] * price[priceIndex]
      foodName[rowIndex] =  foodNames[[priceIndex]]
      rowIndex = rowIndex + 1
    }
    priceIndex = priceIndex + 1


  }
  
  
  finalOutput = data.frame(FOOD = foodName,SERVING_SIZE=servingSize, PRICE=servingPrice)
  
  finalCost = as.numeric(finalSolution[1,ncol(finalSolution)])
  
  
  
  
  
  output = list(tableauList, basicSolutionList, initialTableau, finalSolution, finalOutput, finalCost)
  names(output) = c("Tableau", "Basic_Solution", "Final_Tableau", "Final_Solution", "Final_Output", "Final_Cost")
  
  
  #adding the total cost
  #output[["Total Cost"]] = initialTableau[nrow(initialTableau), ncol(initialTableau)] 
  return(output)
  
  
}

####### SAMPLE INPUTS #######

#cost = c(0.16, 0.06, 0.04, 0.18, 0.02, 0.84, 0.06, 0.31, 0.53, 0.78, 0.27, 0.24, 0.15, 0.32, 0.49, 0.15, 0.16, 0.05, 0.06, 0.09)

# foods <- list(
#   Frozen_Broccoli, Carrots_Raw, Celery_Raw, Frozen_Corn, Lettuce_Iceberg_Raw,
#   Peppers_Sweet_Raw, Potatoes_Baked, Tofu, Roasted_Chicken, Spaghetti,
#   Tomato_Red_Ripe_Raw, Apple_Raw_W_Skin, Banana, Grapes, Kiwifruit_Raw_Fresh,
#   Oranges, Bagels, Wheat_Bread, White_Bread, Oatmeal_Cookies, Apple_Pie,
#   Chocolate_Chip_Cookies, Butter, Cheddar_Cheese, Fat_Whole_Milk, Lowfat_Milk,
#   Skim_Milk, Poached_Eggs, Scrambled_Eggs, Bologna_Turkey, Frankfurter_Beef,
#   Ham_Sliced_Extralean, Kielbasa_Prk, CapN_Crunch, Cheerios, Corn_Flakes,
#   Raisin_Bran, Rice_Krispies, Special_K, Oatmeal, Malt_O_Meal_Choc, Pizza_Pepperoni,
#   Taco, Hamburger_W_Toppings, Hotdog_Plain, Couscous, White_Rice, Macaroni_Ckd,
#   Peanut_Butter, Pork, Sardines_in_Oil, White_Tuna_in_Water, Popcorn_Air_Popped,
#   Potato_Chips_Bbqflvr, Pretzels, Tortilla_Chip, Chicknoodl_Soup, Splt_Pea_Hamsoup,
#   Vegetbeef_Soup, Neweng_Clamchwd, Tomato_Soup, NewE_Clamchwd_W_Mlk,
#   Crm_Mshrm_Soup_W_Mlk, Beanbacn_Soup_W_Watr
# )




# foods = list(Frozen_Broccoli, Oatmeal_Cookies, Roasted_Chicken, Tofu, White_Bread)
# 
# 
          # foods = list(Frozen_Broccoli, White_Bread, Celery_Raw, Frozen_Corn, Lettuce_Iceberg_Raw, Roasted_Chicken, Potatoes_Baked, Tofu, Peppers_Sweet_Raw, Spaghetti_Sauce, Tomato_Red_Ripe_Raw, Apple_Raw_Skin, Banana, Grapes, Kiwifruit_Raw_Fresh,
          #   Oranges,  Bagels, Wheat_Bread,  Carrots_Raw, Oatmeal_Cookies)
          # 
          # foodNames <- list(
          #   "Frozen_Broccoli", "White_Bread", "Celery_Raw", "Frozen_Corn", "Lettuce_Iceberg_Raw",
          #   "Roasted_Chicken", "Potatoes_Baked", "Tofu", "Peppers_Sweet_Raw", "Spaghetti_Sauce",
          #   "Tomato_Red_Ripe_Raw", "Apple_Raw_Skin", "Banana", "Grapes", "Kiwifruit_Raw_Fresh",
          #   "Oranges", "Bagels", "Wheat_Bread", "Carrots_Raw", "Oatmeal_Cookies"
          # )




#foods = list(Wheat_Bread, Tofu, Frozen_Broccoli, Roasted_Chicken, Oatmeal_Cookies, White_Bread, Potatoes_Baked)
# 
# 
#foods = list(Frozen_Broccoli, Lettuce_Iceberg_Raw, Peppers_Sweet_Raw, Apple_Raw_W_Skin, Kiwifruit_Raw_Fresh, White_Bread, Carrots_Raw, Roasted_Chicken, Spaghetti, Banana, Oranges, Oatmeal_Cookies, Celery_Raw, Potatoes_Baked, Tomato_Red_Ripe_Raw, Grapes, Bagels, Frozen_Corn, Tofu, Wheat_Bread)
# 
#foods = list(Frozen_Broccoli, Potatoes_Baked, Tofu, Roasted_Chicken, Wheat_Bread,White_Bread, Oatmeal_Cookies)
# 
# 
 # foods = list(Frozen_Broccoli, Tofu, Roasted_Chicken, Wheat_Bread, White_Bread, Oatmeal_Cookies)
 # 
 # table = initialTableau(foods, minNutrient, maxNutrient, minFoodServing=0, maxFoodServing=10 )
 # Simplex = Simplex(table, length(foods), foodNames)
 # print(Simplex)
 

