library(ISLR)
library(caret)
data(Auto)
data <- Auto[,1:6]
fit <- train(mpg~., method = 'rf', data = data)

shinyServer(
        function(input, output) {
                output$prediction <- renderPrint({
                        predict(fit, data.frame('cylinders' = input$cylinders,
                                                'displacement' = input$displacement,
                                                'horsepower' = input$horsepower,
                                                'weight' = input$weight,
                                                'acceleration' = input$acceleration))
                })

                
        })