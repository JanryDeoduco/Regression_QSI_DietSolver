library(shiny)
library(rhandsontable)
options(max.print = 5000) 
#options(max.print = 50000) 
#setwd("C:/Users/Janry/Documents/CMSC_150_PROJECT,")
source("Regression.R") #Input the regression file
#source("C:/Users/Janry/Documents/CMSC_150_PROJECT/QSI.R") #Input the QSI file
source("SimplexMethod_Nutrition_Project.R") #Input Simplex File

ui <- fluidPage(
  #titlePanel("CMSC 150 Project"), #main title
  
  
  navlistPanel( #Navigation bar for my projects
    "Projects",
    tabPanel("Polynomial Regression", #panel for regression
             h1("Polynomial Regression"),
             
             
             fluidRow(
               column(6, # 3 columns for the function
                      fileInput("file", "Choose a CSV file"),
                      numericInput("degree", "Enter a Degree:", min = 1, max = 1000, value = 1),
                      numericInput("integer", "Enter an Integer:", min = 1, max = 1000, value = 1),
                      h4("Function"),
                      textOutput("fxn"),
                      br(),
                      h4("Estimate"),
                      textOutput("estimate")
               ),
               column(6, # 6 columns for the table
                      h4("Main Table"),
                      tableOutput("contents"),
                      br()
               )
               
             ),
             
             
    ),
    tabPanel("Quadratic Spline Interpolation", #ui for QSI
             h1("Quadratic Spline Interpolation"),
             fileInput("fileQSI", "Choose a CSV file"),
             numericInput("xVal", "Enter an Integer:", min = 1, max = 1000, value = 1),
             br(),
             h4("Function per Interval"),
             uiOutput("functions"),
             br(),
             h4("Function for the Estimate"),
             textOutput("realFunction"),
             br(),
             h4("Estimate"),
             textOutput("qsiEstimate")
    ),
    tabPanel("Diet Plan Minimization", #UI for Diet solver
             h1("Diet Plan Minimization"),
             h4("List of Foods (Check atleast a valid one)"),
             
             fluidRow(
               column(6,
                 checkboxGroupInput("foodItems", "Select food Items:", #check box
                                    choiceNames = list(
                                      "Frozen_Broccoli", "Carrots_Raw", "Celery_Raw", "Frozen_Corn", "Lettuce_Iceberg_Raw", "Peppers_Sweet_Raw", "Potatoes_Baked", "Tofu", 
                                      "Roasted_Chicken", "Spaghetti", "Tomato_Red_Ripe_Raw", "Apple_Raw_W_Skin", "Banana", "Grapes", "Kiwifruit_Raw_Fresh", "Oranges", 
                                      "Bagels", "Wheat_Bread", "White_Bread", "Oatmeal_Cookies", "Apple_Pie", "Chocolate_Chip_Cookies", "Butter", "Cheddar_Cheese", 
                                      "Fat_Whole_Milk", "Lowfat_Milk", "Skim_Milk", "Poached_Eggs", "Scrambled_Eggs", "Bologna_Turkey", "Frankfurter_Beef", 
                                      "Ham_Sliced_Extralean", "Kielbasa_Prk", "CapN_Crunch", "Cheerios", "Corn_Flakes", "Raisin_Bran", "Rice_Krispies", "Special_K", 
                                      "Oatmeal", "Malt_O_Meal_Choc", "Pizza_Pepperoni", "Taco", "Hamburger", "Hotdog_Plain", "Couscous", "White_Rice", "Macaroni_Ckd", 
                                      "Peanut_Butter", "Pork", "Sardines_in_Oil", "White_Tuna_in_Water", "Popcorn_Air_Popped", "Potato_Chips_Bbqflvr", "Pretzels", 
                                      "Tortilla_Chip", "Chicknood_Soup", "Splt_Pea_Hamsoup", "Vegetbeef_Soup", "Neweng_Clamchwd", "Tomato_Soup", "New_E_Clamchwd_W_Mlk", 
                                      "Crm_Mshrm_Soup_W_Mlk", "Beanbacn_Soup_W_Watr"
                                    ),
                                    choiceValues = list(
                                      1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64
                 
                                    )
                 ),
                 actionButton("runSimplex","Compute"),
                 actionButton("All", "Select All"),
                 actionButton("remove", "Remove All"),
                 textOutput("poods"),
                 h4("Initial Tableau:"),
                 tableOutput("initialTableau"),
                 h4("Tableau and Basic Solution per Iteration:"),
                 tableOutput("basicSolutions"),
                 uiOutput("tableau"),
                 h4("Final Solution"),
                 tableOutput("finalSolution")
               ),
               
               column(6, #output table
                 h4("Output Table"),
                 tableOutput("outputTable"),
                 textOutput("Minimize"),
                 
               )
             ) 
    )
  )
)




server <- function(input, output, session) {
  minNutrient = c(2000, 0, 0, 0, 0, 25, 50, 5000, 50, 800, 10) #constraits for nutrients
  maxNutrient = c(2250, 300, 65, 2400, 300, 100, 100, 50000, 20000, 1600, 30)

  # })
  
  
  food_Vector <- reactive({ #accepting food inputs
    if (is.null(input$foodItems)) {
      return (NULL)}
    
    foodList  = food_list[as.integer(input$foodItems)]
    foodNames = food_names[as.integer(input$foodItems)]
   
    return(foodList)
  })
  
  
  
  
  # outPutTable <- eventReactive(input$runSimplex, {
  #   table = initialTableau(foodVector(), minNutrient, maxNutrient, minFoodServing = 0, maxFoodServing = 10)
  #   simplex = Simplex(table)
  #   output = simplex[[5]]
  #   return(output)
  # })
  initial_Tableau <- eventReactive(input$runSimplex, { #accessing the output for initial tableau
    table = initialTableau(food_Vector(), minNutrient, maxNutrient, minFoodServing, maxFoodServing)
    table[table == -0] <- 0
    
    return(table)
    
  })
  
  simplex_Method <- eventReactive(input$runSimplex, {#accessing the output for simplex
    table = initial_Tableau()
    simplex_Output = Simplex(table, length(food_Vector()), food_names)
    
  })
  
  final_Cost <- eventReactive(input$runSimplex, { #accessing the output for final cost
    output = simplex_Method()
    cost = output$Final_Cost
    return(cost)
  })
  

  
  
  
  
  ########################################################################
  
  data <- reactive({ #input csv
    req(input$file)  # Make sure a file is selected
    
    # Read the uploaded file if it's a CSV
    inFile = input$file
    if (is.null(inFile))
      return(NULL)
    
    data = read.csv(inFile$datapath, header=FALSE)
    return(data)
  })
  
  fxn <- reactive({   #getting the functions
    req(input$file)  # Make sure a file is selected
    
    # Read the uploaded file if it's a CSV
    inFile = input$file
    if (is.null(inFile))
      return(NULL)
    
    data = read.csv(inFile$datapath, header=FALSE)
    
    lista = lista = list(data[,1],data[,2])
    output = PolynomialRegression(input$degree, lista, input$integer) #call the regression function
    
    fxnString = output[[3]]
    return(fxnString)
  })
  
  estimate <-reactive({ #getting the estimate
    req(input$file)  # Make sure a file is selected
    
    # Read the uploaded file if it's a CSV
    inFile = input$file
    if (is.null(inFile))
      return(NULL)
    
    data = read.csv(inFile$datapath, header=FALSE)
    
    output = PolynomialRegression(input$degree, data, input$integer) #call the regression function
    
    estimate = output[[5]]
    return(estimate)
  })
  
  functions <- reactive({ 
    req(input$fileQSI)
    
    inFile <- input$fileQSI
    if (is.null(inFile))
      return(NULL)
    
    data <- read.csv(inFile$datapath, header = FALSE)
    x <- input$xVal
    data <- data[order(data$V1), ]
    output <- tryCatch({
      QSI(data, x)
    }, error = function(e) {
      return(list(error = paste("Error in QSI:", e$message)))
    })
    
    if (!is.null(output$error)) {
      return(output$error)
    }
    
    functions <- output[[1]]
    return(functions)
  })
  
  intervals <- reactive({ #getting the intervals
    req(input$fileQSI)
    
    inFile <- input$fileQSI
    if (is.null(inFile))
      return(NULL)
    
    data <- read.csv(inFile$datapath, header = FALSE)
    data <- data[order(data$V1), ]
    x <- input$xVal
    
    output <- tryCatch({
      QSI(data, x)
    }, error = function(e) {
      return(list(error = paste("Error in QSI:", e$message)))
    })
    
    
    
    intervals <- output[[7]]
    return(intervals)
  })
  
  
  
  realFunction <-reactive({ #Getting the function that fits the interval
    req(input$fileQSI)  # Make sure a file is selected
    
    # Read the uploaded file if it's a CSV
    inFile = input$fileQSI
    if (is.null(inFile)){
      print("HA")
      return(NULL)
    }
    data = read.csv(inFile$datapath, header=FALSE)
    data <- data[order(data$V1), ]
    x = input$xVal
    
    tryCatch({
      output = QSI(data,x)
    }, error = function(e) {
      return(list(error = paste("Error in QSI:", e$message)))
    })
    
    realfxn = output[[4]]
    return(realfxn)
  })
  
  qsiEstimate <-reactive({ #getting the estimate of qsi
    req(input$fileQSI)  # Make sure a file is selected
    
    # Read the uploaded file if it's a CSV
    inFile = input$fileQSI
    if (is.null(inFile))
      return(NULL)
    
    data = read.csv(inFile$datapath, header=FALSE)
    data <- data[order(data$V1), ]
    x = input$xVal
    
    tryCatch({
      output = QSI(data,x)
    }, error = function(e) {
      return(list(error = paste("Error in QSI:", e$message)))
    })
    
    estimate = output[[3]]
    return(estimate)
  })
  
  
  
  
  ###########DIET SOLVER############################################
  checkedFoods <- reactiveValues(items = list())
  
  
  
  ######################################################################################
  
  observeEvent(input$All, { #code for selecting all
    # Apply select all logic here
    updateCheckboxGroupInput(session, "foodItems", selected = as.character(1:64))
  })
  
  
  observeEvent(input$remove, { #removing all
    updateCheckboxGroupInput(session, "foodItems", selected = as.character(0))
  })
  
  
  ####Rendering######################################################################
  output$contents <- renderTable({
    data()
    
  })
  
  output$fxn <- renderText({
    fxn()
    
  })
  
  output$estimate <- renderText({
    estimate()
    
  })
  
  output$functions <- renderUI({
    funcs <- functions()
    intervals <- intervals()
    if (is.null(funcs)) return(NULL)
    
    output_list <- lapply(seq_along(funcs), function(i) {
      renderText({
        paste(intervals[i], ": ", funcs[i])
      })
    })
    
    do.call(tagList, output_list)
  })
  
  
  
  
  output$realFunction <- renderText({
    realFunction()
    
  })
  
  output$qsiEstimate <- renderText({
    qsiEstimate()
    
  })
  observeEvent(input$myButton, {
    # Perform any action or logic here
    
  })
  
  output$initialTableau <- renderTable({
    if (is.null(input$foodItems)) {
      return (NULL)
    }
    initialTableau = initial_Tableau()  # Display the table based on the reactive value
    
    #simplex_Output = simplex_Output$Final_Output
    
    
    initialTableau
  })
  
  
  
  # output$finalSolution <- renderTable({
  #   Simplex_Method()  # Display the table based on the reactive value
  # })
  
  # output$outputTable <- renderTable({
  #   final_Output()  # Display the table based on the reactive value
  # })
  
  output$basicSolutions <- renderTable({
    sols <- simplex_Method()
    sols = sols$Basic_Solution
    if (is.null(sols)) {
      return(NULL)
      print("infeasible")
    }
    # Assuming sols is a list where each element represents solutions per iteration
    data <- do.call(rbind, lapply(seq_along(sols), function(i) {
      data.frame(Iteration = i, Value = sols[[i]])
    }))
    data
  })
  # 
  output$tableau <- renderUI({
    sol <- simplex_Method()
    it = sol$Tableau
    if (is.null(it)) return(NULL)
    if (is.null(sol)) return(NULL)
    
    # Create a list of rendered tables for each iteration
    tables <- lapply(seq_along(it), function(i) {
      data <- it[[i]]
      renderTable({
        data.frame(Iteration = i, Value = data)
      })
    })

    # Return a tag list of the tables
    do.call(tagList, tables)
  })
  # 
  output$finalSolution <- renderTable({
    finalSolution <- simplex_Method()  # Display the table based on the reactive value
    finalSolution = finalSolution$Final_Solution
    finalSolution
  })
  
  output$outputTable <- renderTable({
    ot <- simplex_Method()  # Display the table based on the reactive value
    ot = ot$Final_Output
    ot
  })
  
  output$Minimize <- renderText({
    sols <- simplex_Method()
    
    if (is.null(sols)){  
      "The diet plan is infeasible.Please check other combination of foods."
    }
    
    else{
      fc = final_Cost()
      paste0("The minimized cost is ", fc)
    }
    
    
  })
  
  
}

shinyApp(ui = ui, server = server)

