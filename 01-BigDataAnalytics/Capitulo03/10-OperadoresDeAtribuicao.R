
# OPERADORES DE ATRIBUIÇÃO (DIFERENÇA)

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

vetor01 = 1:6
vetor02 <- 1:6

class(vetor01)
class(vetor02)

typeof(vetor01)
typeof(vetor02)

mean(x = 2:20)
print(x)

mean(w <- 2:20)
w
