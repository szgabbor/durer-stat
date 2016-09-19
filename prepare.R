library(magrittr)
cdfk_pontok <- read.csv("9-cdfk-helyi-pontozo.csv") %>% 
    tidyr::separate(Tagok, paste0('tag_', 1:3), sep = '\n') %>% 
    tidyr::separate(`Évf.`, paste0('Evfolyam_', 1:3), sep = '\n') %>% 
    View()
