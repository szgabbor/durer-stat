source('prepare.R')

chooseTopOfCategory <- function(scores, category) {
    long_category_name <- paste(category, 'kategória')
    dplyr::filter(scores, Kategória == long_category_name) %>% 
    dplyr::arrange(desc(Összesen)) %>% 
        data.table()
}
