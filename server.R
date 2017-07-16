
library(shiny)
library(dplyr)
library(igraph)

shinyServer(function(input, output) {
  
  output$plot1 <- renderPlot({
    
    plot(make_full_graph(input$n) %>%
           set_edge_attr("color", value = input$edgecolor)%>%
           set_edge_attr("width", value = input$edgewidth)%>%
           set_vertex_attr("color", value = input$nodecolor)%>%
           set_vertex_attr("size", value = input$nodesize))
    
  })
  
})
