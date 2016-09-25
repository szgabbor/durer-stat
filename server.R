shinyServer(function(input, output) {
    output$scores <- renderDataTable({
        fread('raw_data/9-cdfk-helyi-pontozo.csv')
    })
})
