vet = c(1,2,3,4)

cnt = 0
ls = list()
for(i in vet)
{
  # gerando nome das colunas
  cnt =cnt+1
  ls[cnt] = paste('col',as.character(cnt),sep="")
}
#######################################
# nomeando vetores 
names(vet) = ls

vet['col1']
########################################################
nomesmat = c("col1",'col2')
nomesr = c('lin1','lin2','lin3','lin4')
mt = matrix(1:8,ncol=2,nrow=4)
mt
########################
# nomeando a matrix, Linhas e colunas
dimnames(mt) = list(nomesr,nomesmat)
mt[c('lin1','lin3'),'col1']

#####################################

ls = list(1,2,3)
names(ls) = c('col1','col2','col3')





