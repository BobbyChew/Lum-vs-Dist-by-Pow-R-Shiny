library(shiny)
library(ggplot2)

df <- read.table(file = "circuit.csv", sep=",", header = TRUE)


shinyServer(function(input, output) {

  output$plot1 <- renderPlot({
    
    df2 <- subset(df,df$pow==input$power)
    
    p <- ggplot(df2)+
    geom_point(aes(x=dist, y=lum))
    print(p)
    
  })
  
})
