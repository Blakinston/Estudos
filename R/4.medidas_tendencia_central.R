# medidas de tendencia central 
# media: soma dos registros dividido pelos registros total
# amostral : n e Polulacional: N
# Mediana : ocupa a posicao central dos dados 
# moda: amodal(sem moda),bimodal:duas modas,trimodal:tres modas

vet= c(10,23,32,32,40,57,57)

mean(vet)
# mediana coupa valor central,empate tira media 
median(vet)

moda = function(x) {
  z = table(as.vector(x))
  names(z)[z == max(z)]
}

moda(vet)

# media ponderada, existem pesos para cada elemento 

# media da distribuicao de frequencia
# x ponto medio, faixas de valores e precisamos do ponto medio
# f frequencia
# soma das frequancias/(x*f)

# sistemetrica: media,mediana,moda sao iguais 
# uniforme: os valores tem mesma frequencia, media e mediana uguais, retangular
# assimetrica a esquerda, media fica a esquerda cauda fica a esquerda,mediana entre media e moda
# assimetrica direita: media fica  a direita, mediana centro, moda a esquerda

# assimetrico a direita: media > mediana 
# assimetrico a direita: media < mediana 



