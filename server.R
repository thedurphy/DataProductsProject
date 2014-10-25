library(ISLR)
library(caret)
library(ggplot2)
library(randomForest)
data(Auto)
Auto <- Auto[,1:6]
fit <- train(mpg~., method = 'rf', data = Auto)

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