library(shiny)
library(ggplot2)


shinyUI(fluidPage(
hr(),
sidebarLayout(
  sidebarPanel(
    sliderInput("power",label = "Power",
                min = 0, max = 5, value = .5, step = .1)
    
    ),
  mainPanel(
   p("Lum vs Distance by Power"),
   plotOutput('plot1')
  )
)
))

