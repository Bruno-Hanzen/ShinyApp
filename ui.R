
library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Choose a ticker"),
  
  # Sidebar with a slider input for number of bins 
  
  sidebarLayout(
    sidebarPanel(
       
       selectInput("Ticker", "Ticker", c("UNH", "IBM", "MSFT", "CVX", "XOM", "WMT", "MMM", "V", "GE",
                                         "KO", "TRV", "VZ", "AAPL", "MCD", "HD", "BA", "NKE", "JPM",
                                         "JNJ", "PFE", "PG", "DD", "DIS", "UTX", "MRK", "CSCO", "AXP",
                                         "INTC", "CAT", "GS")),
       selectInput("Indicator", "Indicator", c("ADX", "Bollinger", "CCI", "MACD", "ROC", "RSI", "SAR", "SMI"))
       
    ),
    mainPanel(
        h1("This page shows the stock price with the selected indicator"),
        h2("Prices of the Dow Jones stocks"),
        plotOutput("price"),
        h1("HowTo"),
        p("Select a ticker with the drop down list"),
        p("Select an indicator with the drop down list")
        
    )
  )
))
