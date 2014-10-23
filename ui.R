library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Features of the house"),
  sidebarPanel(
      p(em("Documentation:",a("project",href="index.html"))), 
    numericInput('surface','The surface of the house square meters', 100, min=50, max=500,step=10),
    checkboxInput('ols',
                  label = strong("Outdoor Living Space"),
                  value = FALSE),
    checkboxInput('ee',
                  label = strong("Energy Efficient"),
                  value = FALSE),
    checkboxInput('dg',
                  label = strong("Double Garage"),
                  value = FALSE),
    submitButton("OK")
  ),
  mainPanel(
    h3('Prediction for the price of the house in $'),
    h4('Surface'),
    verbatimTextOutput("osurface"),
    h4('Outdoor Living Space'),
    verbatimTextOutput("ools"),
    h4('Energy Efficient'),
    verbatimTextOutput("oee"),
    h4('Double Garage'),
    verbatimTextOutput("odg"),
    h4('The price of this house would be'),
    verbatimTextOutput("prediction")
  )
))