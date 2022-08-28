# ditribui ´por linhas
# primeira 1 a 4 
# segunda  2 a 5 
rbind(1:4,2:5)

# ditribui ´por colunas
# primeira 1  a 4 
# segunda  2 a 5
cbind(1:4,2:5)


altura = c(1.72,1.76,1.83)
pessoas = c("augusto","roger","gustavo")

# retorna uma matrix
dfP = cbind(pessoas,altura)

dfP= data.frame(dfP)
