shinyServer(function(input, output) {
    scores <- eventReactive(input$show, {
        fread(input$raw_data)
    })
    
    output$scores <- renderDataTable({
        scores()    
    })
})
