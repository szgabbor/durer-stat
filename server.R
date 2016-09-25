shinyServer(function(input, output) {
    scores <- reactive({
        fread(input$raw_data)
    })
    
    output$scores <- renderDataTable({
        scores() %>% 
            filterForCategory(input$category)
    })
    
    output$effect_of_age <- renderPlot({
        scores() %>% 
            filterForCategory(input$category) %>% 
            classDataForTeams() %>% 
            plotEffectOfClass()
    })
})
