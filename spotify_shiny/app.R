#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#


ui <- dashboardPage(
  dashboardHeader(title = "2023/2024 Data Visualizations"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("2023", tabName = "2023", icon = icon("dashboard")), 
      menuItem("2024", tabName = "2024", icon = icon("bar-chart")),   
      menuItem("Comparing Years", tabName = "Comparing_Years", icon = icon("cogs"))
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "2023",  
              h2("Content for 2023"),
              p("This is the content for the 2023 tab.")
      ),
      
      tabItem(tabName = "2024", 
              h2("Content for 2024"),
              p("This is the content for the 2024 tab.")
      ),
      
      tabItem(tabName = "Comparing_Years", 
              h2("Content for Comparing Years"),
              p("This is the content for the Comparing Years tab.")
      )
    )
  )
)


server <- function(input, output) {

}

shinyApp(ui, server)


