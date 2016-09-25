shinyUI(fluidPage(
    title = "durer stats",
    selectInput(
        'raw_data', label = 'select data',
        choices = c(file.path('data', '9H-cdfk-scores.csv'),'bagoly')
    ),
    radioButtons(
        'category', 'Select category', choices = c('C', 'D', 'F', 'K'), inline = T
    ),
    plotOutput('effect_of_age'),
    dataTableOutput('scores')
))
