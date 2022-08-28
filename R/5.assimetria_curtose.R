# assimetria e a distancia da distribuição simetrica 

dados = rnorm(100,mean=10)
# em uma distribuicao normal a sua e em formato de sino
# media = mediana q e igual moda
hist(dados,freq=F)
lines(density(dados),lwd=2)

# existe pequenas diferncas como 8.888 = 8.79
round(mean(dados),0) == round(median(dados),0)

# assimetrica a direita 
# media > mediana
# mediana > moda , media e a maior medida 

# assimetrica a esquerda 
# media   < mediana
# mediana <  moda , moda e maior 
############################################
# ### curtose 
# grau de achatamento 

#####
# leptocurtica: dados alto grau de ailamento, pouca variavncia, media pode ser usada para analisar
# mesocurtica(normal): grau de achatemento, concentrado media=moda=mediana,  
# platicurtica : aberta, muito variavel, usamos mediana 
####

lepto = rnorm(50,mean=3)

hist(lepto)
plot(density(lepto))

library(EnvStats)

skewness(lepto)

getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}
###########################################################
# distribuicao 
# <0 assimetrica esquerda
# >0 assimetrica direita
# =0 simetrica, lembrando 0.23568 e zero os decimais nao levamos em consideracao 
dN=rnorm(100,mean=5)
skewness(dN)

####################################
# coeficiente 1de pearson 
# media - moda/dvp
# util quando temos uma moda forte, moda fraca ou multiplas nao e tao util

# segundo coeficiente de pearson 
# 3(media-mediana)/ dvp
# util para verrificar, sem depender da moda 

############################################
# achatamento do grafico, desvio dos dados
# Leptocúrtica (afilado) ➔ K>3
# Mesocúrtica ➔K=3
# Platicúrtica (achatado) ➔K<3
# n observacoes sao a contagem

kurtosis(dN)

hist(dN)

