translateColName <- function(df) {
    dt <- data.table(df) 
    setnames(
        dt, 
        c("Csapatnév", "Kategória", "Helyszín"), 
        c("team", "category", "venue")
    )
    setnames(
        dt, 
        c("tag_1", "tag_2", "tag_3"),
        c("member_1", "member_2", "member_3")
    )
    setnames(
        dt,
        c("Evfolyam_1", "Evfolyam_2", "Evfolyam_3"),
        c("class_1", "class_2", "class_3")
    )
    setnames(
        dt,
        c("Iskola", "Város", "Régió"),
        c("school", "city", "region")
    )
    setnames(
        dt,
        c("X1..feladat", "X2..feladat", "X3..feladat", "X4..feladat", "X5..feladat"),
        c("problem_1", "problem_2", "problem_3", "problem_4", "problem_5")
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
