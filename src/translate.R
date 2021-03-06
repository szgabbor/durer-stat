translateColName <- function(df) {
    dt <- data.table(df) 
    setnames(
        dt, 
        c("Csapatnév", "Kategória", "Helyszín"), 
        c("team", "category", "venue")
    )
    setnames(dt, "Tagok", "members")
    setnames(dt, "Évf.", "class")
    setnames(
        dt,
        c("Iskola", "Város", "Régió"),
        c("school", "city", "region")
    )
    setnames(
        dt,
        paste0('X', 1:5, '..feladat'),
        paste0('problem_', 1:5)
    )    
    setnames(
        dt,
        c("Összesen"),
        c("total")
    )
    setnames(
        dt,
        c("Felkészítő.tanárok", "Megjegyzés"),
        c("teachers", "note")
    )
    dt
}
