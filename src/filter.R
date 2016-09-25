filterForCategory <- function(scores, category) {
    long_category_name <- paste(category, 'kategória')
    scores[Kategória == long_category_name,]
}
