shinyUI(pageWithSidebar(
        headerPanel("How many miles-per-gallon are YOU getting?...in the 1970s"),
                sidebarPanel(
                        h4('Adjust the attributes below to see your fuel efficiency'),
                sliderInput('cylinders', 'How many cylinders?', value = 5.5, min = 2, max = 12, step = 1,),
                sliderInput('displacement', 'How large is the engine? (cubic Inches)', value = 194, min = 68, max = 460, step = 1,),
                sliderInput('horsepower', 'What horsepower is your car?', value = 105, min = 46, max = 230, step = 1,),
                sliderInput('weight', 'Weight of the car? (lbs.)', value = 3000, min = 1600, max = 5200, step = 1,),
                sliderInput('acceleration', 'What is the acceleration? (0-60 mph (seconds))', value = 15.5, min = 8, max = 25, step = 0.5,)
                ),
        mainPanel(
                h5('As gas prices are soaring, it is even more important to get the most out of the gas you buy.  This handy app will take the following attributes of your automobile and output you miles-per-gallon.  You can also play around with sliders to see what attribute can contribute the most in getting the most out of your vehicle.'),
                h4('Miles Per Gallon'),
                verbatimTextOutput("prediction"),
                h6('Please give the app at least a minute the first time.  It is running a prediction algorithm which will take a bit.')
                )
        ))