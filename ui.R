library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict Temperature from Ozone"),
    sidebarLayout(
       sidebarPanel(
           sliderInput("sliderOzone", "Pick value of Ozone concentration (ppb)",1,168, value=20),
           checkboxInput("showModel1","Show/Hide Regression Model", value= TRUE)
           ),
    mainPanel(
       plotOutput("plot1"),
       h3("Predicted Temperature (degree F) for given value of Ozone"),
       textOutput("pred1")
    )
  )
))
