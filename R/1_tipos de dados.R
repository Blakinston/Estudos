# 4 tipos de dados no R 
# Numerico,caractere,complexo,logico
#########################################################
# Numerico, recebe real ou inteiro

num = 2.5
num2 = 2:4

#########################################################
# caracter

c = 'augusto'

#############################################
# complexo

comp = 2.5+4i
############################################
# objetos 
# vetores, matrizes,listas datframes e funcoes 
#########################################

# vetor

vet = c(1:10)


####################################
#matriz , um tipo de dados
# valors, linhas
mat = matrix(1:4,nrow=2,ncol=2)

mt = matrix(c(as.integer(1),2,'a','b','c','d'),ncol=3)

class(mt[1])
#######################################
# array
# ele pode ter mais de uma dimensao 
# 1 a 4 valores 
# 2 linhas, 2 colunas e 2 dimensoes
# resultando em duas matrizes 
# so recebe um tipo de dados
array = array(c(as.integer(1),'a','b','c','d'),dim=c(2,2,2))

####################################################################
# lista 

lista = list(array,mat)


#####################################################################
# function 

func = function(x){
  return(x+2)
}

func(1)




