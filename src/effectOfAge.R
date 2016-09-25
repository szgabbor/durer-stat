agesDataForTeams <- function(scores_in_category) {
    scores_in_category %>% 
        .[,
          .SD,
          .SDcols = c('team', paste0('class_', 1:3), 'total')
          ] %>% 
        melt(id.vars = c('team', 'total'), value.name = 'class') %>% 
        .[, lowest_age := min(as.integer(class)), by = 'team'] %>% 
        .[, num_member_in_lower_class := sum(class == lowest_age), by = 'team'] %>% 
        .[, .(total = mean(total)), by = c('team', 'num_member_in_lower_class')]
} 

plotEffectOfAge <- function(age_data) {
    ggplot(age_data, aes(x = num_member_in_lower_class, y = total, group = num_member_in_lower_class)) +
        geom_jitter(aes(col = num_member_in_lower_class), width = 0.2) +
        theme(legend.position = 'none')
}
