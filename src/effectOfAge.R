agesDataForTeams <- function(scores_in_category) {
    scores_in_category %>% 
        .[,
          .SD,
          .SDcols = c('Csapatnév', paste0('Evfolyam_', 1:3), 'Összesen')
          ] %>% 
        melt(id.vars = c('Csapatnév', 'Összesen'), value.name = 'Evfolyam') %>% 
        .[, lowest_age := min(as.integer(Evfolyam)), by = 'Csapatnév'] %>% 
        .[, num_member_in_lower_class := sum(Evfolyam == lowest_age), by = 'Csapatnév'] %>% 
        .[, .(Összesen = mean(Összesen)), by = c('Csapatnév', 'num_member_in_lower_class')]
} 

plotEffectOfAge <- function(age_data) {
    ggplot(age_data, aes(x = num_member_in_lower_class, y = Összesen, group = num_member_in_lower_class)) +
        geom_jitter(aes(col = num_member_in_lower_class), width = 0.2) +
        theme(legend.position = 'none')
}
