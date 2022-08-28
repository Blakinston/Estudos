lista = list(c(10,2,99),c("a","b"),c(444,4),c(c(44,5.5,.1)))

# para acessar vetor dentro da lista precisa, acessar
# [[]], pois e aninhado
lista[[2]][2]


lista[[4]][1]

# nomeando lista para facilitar acesso 
names(lista) = c("n1","c1","n2","n3")



#######################################################
# nomeando na criação 
list2 = list(elementos=1:3, nomes=c("a","b","c"))

list2$elementos;list2$nomes
#######################################################
# remnover elementos da lista 

# removendo elementos via indice
lista[[2]][1] = NULL

l = lista$n1[-c(1)]

##################################################
# inserir

# inserindo no ultimo lugar da lista 

lista[[1]][length(lista)]= 33 

lista

# apendando os dados na lista 

# caso eu usasse o c(), ele criaria uma lista com um vetor e nao uma lista de valores
ls = list("a","b","c","d")
# vetor, elementos a adicionar, posicao a adicionar
ls = append(ls, c(0:1), after = 3)
ls







