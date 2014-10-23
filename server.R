require(shiny)
#pricePred<- function(surface,ols,ee,dg){
pricePred<- function(surface){
  price= surface*750
  #if (input$ols) price=price+2000
  #if (input$ee) price=surface+5000
  #if (input$dg) price=price+1000
  price
}
shinyServer(
  function(input, output){
    output$osurface<- renderPrint({input$surface})
    output$ools<- renderPrint({input$ols})
    output$oee<- renderPrint({input$ee})
    output$odg<- renderPrint({input$dg})
    #output$prediction<- renderPrint({pricePred(
      #input$surface,
      #input$ols,
      #input$ee,
      #input$dg)})
    output$prediction<- renderPrint({pricePred(
        input$surface)})
  }
)