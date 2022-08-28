# qualitativas  nominais, ordiniais
# quantitativas discreta, continuas


classAltura = unique(iris$Species)
# classes 
ft = factor(classAltura,order=T,levels=c("alto","medio","baixo"))


formacao1 = c("inicio","medio")
formacao2 = c("medio2","mediz")

ft = factor(rbind(formacao1,formacao2),leves=rbind(formacao1,formacao2))


summary(ft)

# verrifica se os objetos sao iguais
identical(formacao1,formacao2)







