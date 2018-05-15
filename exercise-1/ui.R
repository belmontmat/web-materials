# ui.R
library(shiny)
library(plotly)
library(shinythemes)
shinyUI(
  navbarPage(theme = shinytheme("sandstone"),
  "Electoral College",
  # Create a tab panel for your map
  tabPanel(
    "Map",
    titlePanel("Electoral College Votes"),
    # Create sidebar layout
    sidebarLayout(

      # Side panel for controls
      sidebarPanel(
        tags$h2(class = "panels", "Sidebar"),
        # Input to select variable to map
        selectInput(
          "mapvar",
          label = "Variable to Map",
          choices = list(
            "Population" = "population",
            "Electoral Votes" = "votes",
            "Votes / Population" = "ratio"
          )
        )
      ),

      # Main panel: display plotly map
      mainPanel(
        tags$link(rel = "stylesheet", type = "text/css", href = "style.css"),
        tags$h2(class = "panels", "Main Panel"),
        tags$p("This map shows the electoral college votes by states. The darker
               the color, the higher the number of votes. California has 
                 the highest votes."),
        plotlyOutput("map")
      )
    )
  )

  # Create a tabPanel to show your scatter plot
))