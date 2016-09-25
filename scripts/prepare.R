library(tidyr)

cdfk_scores <- read.csv("raw_data/9-cdfk-helyi-pontozo.csv", stringsAsFactors = F) %>% 
    tidyr::separate(Tagok, paste0('tag_', 1:3), sep = '\n') %>% 
    tidyr::separate(`Évf.`, paste0('Evfolyam_', 1:3), sep = '\n')

write.csv(cdfk_scores, file.path('data', '9H-cdfk-scores.csv'))
