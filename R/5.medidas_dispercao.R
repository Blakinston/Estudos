# amplitude a diferenca do menor e maior 

vet = (10,20,30,30,40,50,90,120)

# desvio e a diferenca entre a media e o valor 
# representa a distancia em relacao a media 
for(i in vet){
  print(i-mean(vet))
}

# variancia: 
# dvp: raiz da vairancia 
# quando a distribuição nao e simetrica usamos teorema de chebychev
# m = 1-1/k**2
# serve para todas as ditribuecoes porem nao e usado na simetrica pois temos mais de um desvio pela proporcao 
# dvp para dados agrupados deve ser tirado pelo x*freq 

# fractis, quartis, devisoes 
# 
# limite superior, maximo
q1= 10
q3=70
iqr =  q3-q1 

(q3+1.5)*iqr

# limite inferior
# menor valor, tudo q estiver abaixo e outlier
(q1+1.5)*iqr


vet2 = c(10,20,30,40,50,70)
# DVP E SD
var(vet2) # variancia usada para medidas com valores baixos negativos ou proximo a zero
sd(vet2) # dvp para se obter o valor mais proximo da realidade

# 0, pimerio, 100 o total
quantile(vet2)
quantile(vet2,probs = c(0.05,0.95))# seleciona somente os dois percentis 
quantile(vet2, seq(from=0,to=1,by=0.10))# de 10% em 10% 


IQR(vet2) # amplitude dos dados do menor ao maior





