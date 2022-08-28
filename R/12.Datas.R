# data
Sys.Date()

# data e hora e tmz
Sys.time()

# mostra o timezone
Sys.timezone()

# Formatando Datas
# %d: dia do mês em 2 dígitos (13)
# %m: mês em 2 digitos (01)
# %y: ano em 2 dígitos (82)
# %Y: ano em 4 dígitos (1982)
# %A: dia da semana (Friday)
# %a: dia da semana abreviado (Fri)
# %B: mês (July)
# %b: mês abreviado (Jul)

# retorna uma string formatda como data
format(Sys.Date(),format="%d-%m-%Y")
dtd = as.Date("28-02-2022",format="%d-%m-%Y")

library(magrittr)

dt ="2022-02-28"

# pegar a string e passar para data, aqui preciso colocar a data no formato para o R saber o q dia,mes e ano
dt %>%
  format("%Y-%m-%d") %>% # formatando e devolvendo como string
  as.Date() -> d2  # convertendo como data e retornando um objeto

# pegando a data e formatando no formado desejado
d2 %>%
  format("%d-%m-%Y") ->d4 # no primeiro format o R precisa sabe o q e cada coisa,aqui eu escolho de fato o formato 

# convertendo em datetime
d3 = "2021-02-25 11:24:134"
dtTm = as.POSIXct(d3)


# timedelata

d1 = ISOdate(2021,1,1)
dd = ISOdate(2022,1,20)
difftime(d1,dd,units="days")# nao faz por meses 

########################################################
install.packages("lubridate")
library(lubridate)


ymd("2016-02-10") # devolve um date, nescessario estar ano mes dia
mdy("02-10-2016") # mes dia ano 
dmy("02-10-2016") # dia mes ano 


dh = dmy_hms("10-02-2022 11:58:10",tz="America/Sao_Paulo")



