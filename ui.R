shinyUI(fluidPage(
    title = "durer stats",
    actionButton('show', label = 'Show now!'),
    selectInput(
        'raw_data', label = 'select data',
        choices = c(file.path('data', '9H-cdfk-scores.csv'),'bagoly')
    ),
    dataTableOutput('scores')
))
