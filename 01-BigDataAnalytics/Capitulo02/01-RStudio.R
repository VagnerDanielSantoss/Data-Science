
# Primeiros Passos na Linguagem R
# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

# Nome dos contribuidores

contributors()

# Licença

licence()
license()

# Informações sobre a sessão

sessionInfo()

# Impressão na tela

print("Início de uma jornada neste mundo do Big Data !")

# Criar Gráficos

plot(1:20)

# Instalar Pacotes

install.packages("ggplot2")
install.packages("dplyr")
install.packages("caret")
install.packages("devtools")
install.packages("randomForest")

# Carregar Pacotes

require(ggplot2)
library(dplyr)
library(caret)
require(devtools)
require(randomForest)

# Descarregar o Pacote

detach(package:ggplot2)

# Ajuda para alguma função

help("mean")
?mean

# Para buscar mais opções sobre um função, utilizar o pacote sos

install.packages("sos")
library(sos)
findFn("fread")

# Caso não souber o nome da função

help.search("matplot")
??matplot
RSiteSearch("randomForest")
example("matplot")

# Sair

q()
