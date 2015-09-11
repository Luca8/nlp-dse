library(shiny)

# Global variables can go here
n <- 200
m <- 100

# Define the UI
ui <- bootstrapPage(
  numericInput('n', 'Number of obs', n),
  numericInput('m', 'Number of obs 2', m),
  dateInput('myDate', 'Some Date input'),
  plotOutput('plot'),
  plotOutput('plot2'),
  verbatimTextOutput('myTextOutput')
)

# Define the server code
server <- function(input, output) {
  output$plot <- renderPlot({
    hist(runif(input$n + input$m))
  })

  output$plot2 <- renderPlot({
    plot(1:input$m, type='l', col='red')
  })

  output$myTextOutput <- renderText({
    as.character(input$myDate)
    
  
  output$plotL<-renderPlot({
  plot(runif(100))
  })
  })
}

# Return a Shiny app object
shinyApp(ui = ui, server = server)
