install.packages("dplyr")
library(dplyr)

# mostra como esta o dataframe
# tipos de dados e os dados
# ate colunas que nao existem ele mostra como vai ficar
glimpse(mutate(iris,total = iris$Petal.Length*100))

# sumarize 

iris %>% 
  summarise(media_pet = mean(Sepal.Width),
            min_petal = min(Sepal.Width),
            max_petal = max(Sepal.Width),
            total = n())
# group by, faz agrupamento 
iris %>%
  group_by(Species)%>%
  summarise(media_pet = mean(Sepal.Width),
            min_petal = min(Sepal.Width),
            max_petal = max(Sepal.Width),
            total = n())


select(iris,Sepal.Width,Petal.Width)

# orderna o data frame 
iris %>%
  arrange(desc(Sepal.Width))

ncol(iris)

# selecionando apenas os numericos 
iris %>%
  select(where(is.numeric))

iris %>% 
  select_if(is.factor)

# seleciona as colunas q terminam com sufixo
iris %>%
  select(ends_with("Width"))

#prefixo
iris %>%
  select(starts_with("Petal"))

# ou uma ou outra
iris %>%
  select(matches("Wid|Sepal"))

# contains, buscar pelos q possuem set
iris %>% 
  filter(grepl("set",iris$Species,fixed = T)==T)

# transmute: adiciona uma coluna
# apenas a coluna nova permanece
iris %>%
  transmute(total_acm=cumsum(Petal.Length))

# mutate if,

iris%>%
  mutate_if(is.double,function(x) x*2)

# renomeando
iris %>%
  rename(especies =Species)%>%
  rename_with(toupper) # aplica funcao sobre nome das ccolunas

install.packages("tidyr")
library(tidyr)

df = data.frame(pais=c("Brasil","Alemanha"),"2002"=c(2,0),"2014"=c(1,7))

# transforma coluna em linha 
# pega a primeira coluna, mantem como a chave
# pega a segunda q tem repeticao, monta em linha ira repitir para cada chave cada linha
# retiramos a 3 para ele nao transformar nda
df %>%
  gather(key=ano,value=gols,-pais)
# so transforma as colunas dentro da selecao
# no caso key e a coluna q sofre 


df2 = data.frame(dpto=c("TI","DH"),pessoas=c("augusto","marcia","tania","mario"),
                 '2021'=c(12000,5000,6000,7000),'2023'=c(18000,5000,6000,7000))

df2


# key e a coluna q passa para linha(orienta)
# value, coluna representativa valore,classes 
# unpivot
df2 %>%
  gather(key=ano,value= salarios,-pessoas,-dpto )
# anos passam a ser uma coluna, KEY
# valores q estavam nele passam a ser uma coluna a VALUE


d=data.frame(nomes=c("augusto santos","mateus zoas"))

# separa em colunas , sep apartir do 2 elemento
d%>%
  separate(nomes,into=c("nome","sob"),sep=2)%>%
  unite(unindo,nome,sob) # unir
  








