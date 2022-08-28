ls = list(1,2,3)
# transforma lista em vetor
vet = unlist(ls)

# aplica uma reducao
# aplica a funcao no objeto passado
# funcao, objeto
do.call(sum,ls)

library(magrittr)
library(dplyr)

# funcoes que tem sintax complicada
# usamos a funcao infixa para deixar a leitura menos complicada
# ajuda a programar pipeline(caminho do dado)
iris %>% # orientar o codigo
  filter(Sepal.Length > 5) %>%
  filter(Species == "setosa") %>%
  select(Petal.Length, Petal.Width, Species)# usa o select para trazer as colunas

# seria assim sem o infixo
filter(iris,Species=="setosa",Sepal.Length > 5)[c('Petal.Length','Petal.Width')]

mean(x=1:10)
x # nesse caso ele nao cria apenas atribui
mean(x<-1:10)
x # cria alem de atribuir






