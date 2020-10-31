
library(shiny)


ui <- fluidPage(

titlePanel("Swiss Dataset : Fertilty VS Indicators : Histograms and Basic Plots"),

tags$p("Swiss Fertility and Socioeconomic Indicators (1888) Data
Description
Standardized fertility measure and socio-economic indicators for each of 47 French-speaking provinces of Switzerland at about 1888."),
tags$p("Selecting an indicator will produce a basic histogram for that specifc indicator, as well produce a set of basic plots against Fertility"),
tags$p("Models are based on a simple linear regression model"),

sidebarLayout( 
  
 
    sidebarPanel( 

      

      selectInput("selection", label = h3("Select Indicator"), 
        choices = list("Agriculture" = "Agriculture", 
                       "Examination" = "Examination", 
                       "Education" = "Education", 
                       "Catholic" = "Catholic", 
                       "Infant.Mortality" = "Infant.Mortality"),
        selected = 1) 
      ),


    mainPanel( 
      plotOutput("distPlot"),
      plotOutput("plot")
      
    ))
)