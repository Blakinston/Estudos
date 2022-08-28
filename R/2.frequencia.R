# estatistica descritiva e o ramo da estatistica que descreve e representa os dados

# frequencia absoluta, e o numero de repeticoes do conjunto, qtd senior,pleno e junior
# frequencia relativa, total da absoluta/qtd da linha 

# total de alunos 25, alunos q tiraram 5 , freq relativa = 5/25

nota = c(4,5,6,7,8,9)
num.alunos = c(5,3,2,3,2,10)

df = data.frame('notas'=nota,'numeros.alunos'=num.alunos)

# BIND_ROWS() devolve uma tibble , funciona como rbind, une os dataframes
# sumarise(.), cria a sumarizacao
# across() serve para aplicar funcao a colunas, caso queira criar coluna pode tbm
# vantagem do across e usar embutido funcoes dplyr
# e que diferente do apply a estrutura nao precisa existir e sim pode ser criada virtual
# preciso do across inves de apply, pois e uma estrutura virtual e nao foi criada ainda

df %>%
  mutate(frequencia.relativa= numeros.alunos/sum(numeros.alunos)) %>%
   bind_rows(summarise(.,
              across(where(is.numeric), sum))) -> df.freq

# distrivuiçao de frequencia
  
df.freq$faixa =cut(df.freq$numeros.alunos,breaks =c(1,3,5,6,10),
                    labels=c('1-3','4-5','6-10'))

df
# quebras  1 a 3  a 5 a 8 a 10 e 10  
df$s=  cut(df$numeros.alunos,breaks =c(1,3,5,8,10),
           labels=c('1-3','3-5','5-8','10'))
                    
# a largura da clase e a distancia ou faixa
# no exemplo acima temos 4 classes e  3 distancia 
# distancia entre clase e a distancia da 1 para ultima , total de classes e 5 , temos 4 de distancia
# largura classe  4 classes e 5 distancias
# amplitude : maior - menor = 1-10 = 9 
# ponto medio: quando temos uma classe faixa e precisamos pegar a media entre os valores

pont.medio = (1+3)/2

# frequencia acumulada, representa a crescente dos dados no decorrer 
df %>%
  mutate(frequencia.relativa= numeros.alunos/sum(numeros.alunos),
         freq.acumulada=cumsum(numeros.alunos)) %>%
   bind_rows(summarise(.,
              across(c(notas,numeros.alunos,
                       frequencia.relativa), sum))) -> df.freq

# graficos para trabalhar com frequencia
# histogram , verrifica x a classe 1000-2000reais y 5 pessoar frequencia
# x classe em forma numerica, caso as quebras nao estejam corretas, fronteiras 1-3: 0.5-2.5
# y frequencia 
df %>%
  mutate()

df2 = df.freq %>% filter(df.freq$numeros.alunos!=25)


df2




