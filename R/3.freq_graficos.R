library(sampling)
library(TeachingSampling)
library(ggplot2)
library(readxl)

setwd('C:/Users/Familia/Documents/Estudos')

df = read_excel('base_de_dados_cadastro.xlsx')

df%>% filter(UF=='SP') ->df.sp

# contagem da minha coluna string
freq.abs = table(df.sp$Cidade)

freq.rel = prop.table(freq.abs)

# unidimensional trabalhar sempre com vetores auxiliares 
freq.abs = c(freq.abs,sum(freq.abs))# modo simples de fazer soma na table 
names(freq.abs)[length(freq.abs)]='Total'
View(freq.abs)

# modo de fazer com label 
data.frame(freq.abs)%>%
  bind_rows(summarise(.,across(where(is.numeric), sum),
                        across(where(is.factor), ~'Total'))) ->freq.abs.sum
  
freq.abs.sum$id = 1:nrow(freq.abs.sum)
  
library(ggplot2)
######## Histograma
# criando uma tabela sumariza para facilitar o uso do histograma 
# x = variavel numerico q iremos  verrificar
# y = frequancia ou densidade 

iris %>%
  group_by(iris$Sepal.Length)%>%
  count ->iris.sum

ggplot(iris.sum,aes(x=`iris$Sepal.Length`,y=n),labels=T)+
  geom_bar(stat="identity")+
  xlab('Sepal')+
  ylab('Freq')

# ylim defini a porpocao q sera mostrada para nao deixa o grafico mtt grande
# labels sao os valores da frequencia nas barras
# breaks largura da classe(x)
hist(iris.sum$`iris$Sepal.Length`,
     ylim=c(0,10),labels = T,breaks=10,main='Histograma')
