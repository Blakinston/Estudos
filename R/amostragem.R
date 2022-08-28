

# conjunto de dados sao informações em relação as observações e respostas

# população: os parametros
# amostra: subconjunto
# censo e toda populacao

# qualitativos: nominais e ordinais
# quantitativos: discreto e continuos
#####################################################
# planejamento de um estudo estatistico 

# indentificar populacao e das variaveis
# plano para coleta de dados(como sera coletado os dados)
# coletar os dados
# usar estatistica descritiva
# interpretacao dos dados, Inferencial
# analise de possiveis erros 

########################################################
# observacao: nao houve alteracao para obter resultados
# experimentos:   houve alteracao para obter resultados
########################################################
#             tecnicas 
# aleatoria simples: amostragem comum
# aleatoria estartificada: divisao de grupos
# aleatoria conglomerado(agrupamento): grupo e analisa todos os elemntos do grupo
# sistematica: de n em n, multiplos de 5 alguma regra 

library("dplyr")
library("sampling")
library(TeachingSampling)
library(summarytools)

# amostragem simples

set.seed(1)# manter mesma amostra 

# conjunto, reposicao, probabilidade do elemento
amostra = sample(c(0,1),nrow(iris),replace=1,prob=c(0.5,0.5))

# quantidades na amostra
summary(as.factor(amostra))

# prporcao 
table(amostra)/nrow(iris)

amostraIris = iris[amostra==1,] #pegando as linhas iguais a um, devolve true para indice

freq(amostraIris)
########################################
# amostragem sistematica

set.seed(300)

amst = S.SY(nrow(iris),5) # escolhe um de n em n
# 1 a 5 , escolheu 2, 10 a 15 = 12 e assim por diante

# retorna indice das linhas
irisAm = iris[amst,]

# RESET index das linhas do dataframe 
rownames(irisAm) =  NULL

# 20 % dos dados sao amostra 
nrow(irisAm) / nrow(iris) *100

#############################
# estratificada 

# o data frame esta 
# dos 150 registros eu tenho 50 cada especie 
freq(iris)

setosa = iris %>% filter(Species=='setosa')

virginica = iris %>% filter(Species=='virginica')

versicolor = iris %>% filter(Species=='versicolor')

set.seed(5)


n = nrow(iris) # quqantidade de total de linhas
qtd =  summary(iris$Species)  # quantidade por cada especie
fr = c(round(qtd*0.4))   # pego 40% para cada especie, ou seja n total de linhas q representa aquela especie

# srswor: sem reposicao 
# 
am = strata(data=iris ,stratanames = c("Species"),
            size=c(fr),
            method='srswor')

am
######################################
# amostragam conglomerado 
# conglomerado, cria um grupo e dps seleciona desse grupo por um outro 
# cria um cluster 
# empregados clt(segmentacao), nivel de experiencia(grupos)
# nao nescessariamente precisamos segmentar mas precisamos criar grupos 

carb.4 = mtcars %>% filter(carb==4)

amst = cluster(mtcars,clustername ='gear',
               size=3,method=c('srswor'))

