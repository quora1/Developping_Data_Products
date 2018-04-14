# Developping_Data_Products
 
Prediction of Temperature from Ozone  
####################################  
  
This simple shiny application predicts Temperature based on Ozone concentration using linear regression model. 
The purpose of this exercise is to try out different features in shiny rather than building models that make a lot of sense.  
  
--> the application is published here: https://quora1.shinyapps.io/Shiny_final/  
--> the data used to run it is built in R: airquiality (run: data(airquiality))  
  
How it works?  
##############  
The user is asked to pick a value of ozone concentration (in ppb) and get's the predicted temperature (in degrees F) together with a plot showing correlation between the two values together with the fitted line     
(obtained by running: lm(Temp ~ Ozone, data = airquality).   
The files of the applications are:  
  
-ui.R  
-server.R  
-screen_shot_temp_prediction (for illustration)  
  
You can also open both files in RStudio and click "Run App"  
  
Enjoy!
 
