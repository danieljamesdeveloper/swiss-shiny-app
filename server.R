library(shiny)

server <- function(input, output) {

  output$plot <- renderPlot({ 
    x    <-   swiss[, input$selection] 

    model <- lm(Fertility ~ x , data = swiss)
    par(mfrow=c(2,2))
    plot(model)
  
  })
  
  output$distPlot <- renderPlot({ 
      x    <-   swiss[, input$selection] 

      hist(x, col = 'green', border = 'blue', xlab=input$selection, 
           main="Swiss French Provinces Fertility Plotted Against Socioeconomic Indicators")
  }) 
}
