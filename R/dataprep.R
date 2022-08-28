if(!require(dplyr)){install.packages("dplyr")}
if(!require(data.table)){install.packages("data.table") }

library(data.table)
library(dplyr)

memory.limit(2457)

setwd('C:/Users/Familia/Documents/Estudos/ESTATISTICA')

enem <- fread('enem_sp_2019.csv')

#  escolher apenas duas colunasd
sel <-c('TP_ESTADO_CIVIL','SG_UF_RESIDENCIA')
# selecionando exceto as colunas no sel
cols = as.vector(which(names(enem) %in% sel,arr.ind = F))# pegando apenas as que nao estao no sel
enem = enem[c(cols),]
dim(enem)

# alem dos dados ele mostra como esta o dataframe 
glimpse(enem)

# passando para fator a minha categoria
enem$CO_ESCOLA = as.factor(enem$CO_ESCOLA)

# contagem de nulos

sapply(enem,function(x) sum(is.na(x))) # ausentes
sapply(enem,function(x) sum(is.nan(x)))# indefinidos


treineiros    = enem%>% filter(IN_TREINEIRO==1)# treineiros
vestibulandos = treineiros = enem%>% filter(IN_TREINEIRO==0)# vestibulandos

# excluir coluna de treineiro

vestibulandos$IN_TREINEIRO <- NULL

install.packages("tidyverse")
library(tidyverse)

# dropar os nulos 
vestibulandos = drop_na(vestibulandos,CO_ESCOLA)
















