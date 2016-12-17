library(shiny)
library(quantmod)


shinyServer(function(input, output) {
  
  currentStock <- reactive({
      get(getSymbols(input$Ticker,src="yahoo"))
  })   
  
  output$price <- renderPlot({
      tick<-input$Ticker
      chartSeries(currentStock(), name=input$Ticker, theme=chartTheme('white'))
      
      switch(input$Indicator, 
             ADX = addADX(),
             Bollinger = addBBands(), 
             CCI = addCCI(),
             MACD =  addMACD(),
             ROC = addROC(),
             RSI = addRSI(),
             SAR = addSAR(),
             SMI = addSMI())
  })
 
})
