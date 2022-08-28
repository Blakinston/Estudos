pais = c("eua","Brasi","Canada")
altura = c(1.76,1.74,1.78)
peso = c(76,75.4,78)

pesq = data.frame(pais,altura,peso)


dfC = cbind(pais,altura,peso) # DISPOSICAO DE COLUNAS NOMEIA COLUNAS COM NOME DAS VAIRVEIS
dfR = rbind(pais,altura,peso) # DISPOSICAO DE LINHAS NAO NOMEIA COLUNAS
# nome das colunas
colnames(dfC)
colnames(dfR)
# nome das linhas
rownames(dfC)
rownames(dfR)

# linha e coluna
# coluna 1 e 3 
dfC[1,c(1,3)]


# selecionando pela linha no dataframe disposto por linhas

dfR[which(rownames(dfR)=="peso"),1]






