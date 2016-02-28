# calculate the BMI
BMI_calc <- function(weight,lengthm) weight/(lengthm*lengthm)

# Calculate the lower and upper bound of a healthy BMI
BMI_low <- function(lengthm) 18.5*(lengthm*lengthm)
BMI_upper <- function(lengthm) 25*(lengthm*lengthm)

shinyServer(
    function(input,output) {
        length_m<- reactive({as.numeric(input$length)/100})
        output$inputValue_weight <- renderPrint({input$weight})
        output$inputValue_length <- renderPrint({input$length})
        output$prediction <- renderPrint({BMI_calc(input$weight,length_m())})
        output$prediction2 <- renderPrint({BMI_low(length_m())})
        output$prediction3 <- renderPrint({BMI_upper(length_m())})
    }    
    
    
)