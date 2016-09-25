filterForCategory <- function(scores, category) {
    long_category_name <- paste(category, 'kategória')
    scores[category == long_category_name,]
}
