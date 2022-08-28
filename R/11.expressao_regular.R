
str =c("maria","amor","cliente")
# busca dentro das strings se o padrao digitado existe
# value =T, retorna valor
# value =F, retorna indice 
# existem expressoes regulares \\d , digitos ...
grep("l",str,value=T)

# retorna uma lista com boleanos
grepl("l",str)

# substitui padrao, por algo especificado
gsub("_","|","f00_augusto",ignore.case = T)

####################
# regex 

regX <- function(x) iconv(x, to = "ASCII//TRANSLIT")
regX("Recébão")

