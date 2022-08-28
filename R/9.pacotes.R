# retorna as funcoes dentro da lib
ls("package:dplyr")

# retorna as funcoes dentro da lib e tbm a especificacao da funcao
lsf.str("package:dplyr")

# retornam funcoes dentro do namespace
# ex union_all.data.frame, que tem outras funcoes
# funcao.funcao
ls(getNamespace("dplyr"),all.names=T)
# mostra todos os pacotes carregados 
search()