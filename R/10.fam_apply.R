ls = list(1,2,3)
###################################################################
# apply simples
# apply simples, aplica sobre todos os elementos
sapply(ls,function(x) x*2 )
# funcao definida, com dois argumentos
mut <- function(x,n) return( x*n) 
# posso passar o argumento no sapply
# retorna um vetor

sapply(iris$Sepal.Length,mut,n=10)

####################################################################
# retorna uma lista
# identica ao sapply

ls = lapply(iris$Sepal.Length,mut,n=10)

#####################################################################
# apply escolho se faco por linha ou coluna 
# 1 linha, 2 coluna

mt = matrix(1:10,nrow=5,ncol=2)

# nesse caso ele soma as linhas, retorna a soma das linhas
apply(mt,1,sum)

# no caso de funcoes q nao modificam o contexto,agregacao
# ocorre um pivo para as funcoes que sao aplicadas e nao agregadas
apply(mt,1,function(x) x*2 )

############################################################################
# tapply, pega um fator(conjunto)

# multiplica por dois 
# duas colunas por especies
lsCx = apply(iris[c(1,2)],2,function(x) tapply(x,iris$Species,function(y) y*100))
# lista complexa
#coluna,categoria 
lsCx$Sepal.Length$setosa

# ele cria agrumaneto mas por linhas
lscc = by(iris[c(1,2)],iris$Species,FUN=function(x) x*100 )
# categoria,coluna

equals(lscc$setosa$Sepal.Length,lsCx$Sepal.Length$setosa)
#######################################


apply(iris[c(1,2)],2,function(x) tapply(x,iris$Species,function(y) y*100))


# fazer uma agregação para Specie,
# preciso aninhar, pois a funcao tapply vetor, e nao matriz ou datframe
# passo os dados das duas colunas a funcao tapply, agrupa e faz a mnultiplicacao
iris[c(1,2)] %>%
          apply(2,function(x) tapply(x,iris$Species,function(z) z*100))



