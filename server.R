shinyServer(function(input, output) {
    scores <- reactive({
        fread(input$raw_data)
    })
    
    output$scores <- renderDataTable({
        scores()    
    })
})
