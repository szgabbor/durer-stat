source('prepare.R')
source('filter.R')

age_data <- cdfk_pontok %>%
    chooseTopOfCategory('C') %>% 
    .[
        ,
        .SD,
        .SDcols = c('Csapatnév', paste0('Evfolyam_', 1:3), 'Összesen')
        ] %>% 
    tidyr::gather_('old_col_name', 'Evfolyam', paste0('Evfolyam_', 1:3)) %>% 
    data.table() %>% 
    .[, lowest_age := min(as.integer(Evfolyam)), by = 'Csapatnév'] %>% 
    .[, num_member_in_lower_class := sum(Evfolyam == lowest_age), by = 'Csapatnév'] %>% 
    .[, .(Összesen = mean(Összesen)), by = c('Csapatnév', 'num_member_in_lower_class')]

library(ggplot2)

ggplot(age_data, aes(x = num_member_in_lower_class, y = Összesen, group = num_member_in_lower_class)) +
    geom_jitter(aes(col = num_member_in_lower_class), width = 0.2) +
    theme(legend.position = 'none')
