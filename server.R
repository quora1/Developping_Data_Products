library(shiny)
shinyServer(function(input, output) {
  Ozone<- airquality$Ozone
  Temp<- airquality$Temp

  model1 <-lm(Temp ~ Ozone, data = airquality)
  
  model1pred <-reactive({
  OzoneInput <-input$sliderOzone
  predict(model1, newdata = data.frame(Ozone=OzoneInput))
  })
  
  output$plot1 <- renderPlot({
    
    OzoneInput <-input$sliderOzone
    plot(airquality$Ozone, airquality$Temp, xlab="Ozone concentration (ppb)", ylab="Temperature (F)", bty ="n", pch=16, xlim = c(1,180), ylim= c(40,105))
    if(input$showModel1){
    abline(model1, col="red", lwd=2)
    points(OzoneInput, model1pred(), col= "red", pch=16, cex=2)
    }
})
  
      output$pred1 <- renderText({
        model1pred()
})
   
  })
