
# Pacotes e Instalação de Pacotes na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

### Busca os Pacotes Carregados na inicialização

search()

### Instala e Carrega os Pacotes

install.packages(c("ggvis", "tm", "dplyr"))
library(ggvis)
require(tm)
library(dplyr)

search()

?require
?library

detach(package:dplyr)

### Lista o Conteúdo dos Pacotes

?ls

ls(pos = "package:tm") # Mostra todas as funções que o pacote oferece
ls(getNamespace("tm"), all.names = TRUE)

### Lista as Funções de um Pacote

lsf.str("package:tm")
lsf.str("package:ggplot2")
lsf.str("package:dplyr")

install.packages("ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")

### A Linguagem R possui um conjunto de Datasetes Pre-Instalados

install.packages("MASS")
require(MASS)

data()

?lynx

head(lynx)
tail(lynx)
summary(lynx)

plot(lynx)
hist(lynx)

View(iris)
iris$Sepal.Length
sum(Sepal.Length)

?attach

attach(iris)
sum(Sepal.Length)
