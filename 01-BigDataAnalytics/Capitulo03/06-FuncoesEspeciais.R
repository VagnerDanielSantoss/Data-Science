
# Funções Especiais na Linguagem R (Unlist, Do Call, Strsplit)

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

### UNLIST()
## Produz um vetor com os elementos da lista

?unlist

lista01 <- list(100, "Data Science", TRUE)
print(lista01)
mode(lista01)
class(lista01)
typeof(lista01)

unlist(lista01) # Procedimento feito apenas em tempo de execução, não foi alterado o formato da lista01
print(lista01)
vetor01 <- unlist(lista01) # Feito alteração de lista para vetor definitivo
print(vetor01)
class(vetor01)

lista02 <- list(valor01 = 2, valor02 = list(2, 8, 15), valor03 = c(TRUE, TRUE, FALSE))
print(lista02)
mode(lista02)
class(lista02)
typeof(lista02)

unlist(lista02)
mode(lista02)
class(lista02)
typeof(lista02)

lista03 <- list(numero01 = 10, numero02 = list(18, 14, 56), numero03 = c(8, 18, 28) )
print(lista03)
mode(lista03)
class(lista03)
typeof(lista03)

unlist(lista03)

mean(unlist(lista03))
round(mean(unlist(lista03)), digits = 2)

### DO CALL()
## Executa uma função em um objeto.
## As funções da família APPLY() aplicam uma função a cada elemento de um objeto
## (substitui um loop)
## a função DO CALL(), aplica uma função ao objeto inteiro e não a casa elemento
## individualmente.

?do.call

dados <- list()
N <- 50

for (valor in 1:N) {
  dados[[valor]] = data.frame(index = valor, char = sample(letters, 1), z = rnorm(1))
}

head(dados)

do.call(rbind, dados)
class(do.call(rbind, dados))

### LAPPLY() x DO.CALL()

W <- list(5:10, 20:25, 45:50)
print(W)

lapply(W, sum) # Soma efetuada para cada elemento da lista
do.call(sum, W) # Soma efetuada para a lista toda

## O resultado da função LAPPLY() pode ser obtido de outras formas
## Pacote plyr

install.packages("plyr")
require(plyr)

W <- list(5:10, 20:25, 45:50)
print(W)

ldply(W, sum)

### STRSPLIT()
## Divide uma string ou vetor de caracteres

texto01 <- "Ciência de Dados é muito divertido"
strsplit(texto01, " ") # Frase dividida por espaço entre as palavras
strsplit(texto01, "") # Frase dividida por caracter de cada palavra, inclusive os próprios espaços

datas <- c("2023-01-01", "2023-01-17", "2023-04-01", "2023-04-02", "2023-07-07", "2023-09-01")
temp <- strsplit(datas, "-")
print(temp)
mode(temp)
class(temp)
typeof(temp)

### TRANSFORMA A LISTA EM MATRIZ FAZENDO ANTES UM UNLIST()

matrix(unlist(temp), ncol = 3, byrow = TRUE)
matrix(unlist(temp), ncol = 3)

nomes <- c("Brin, Sergey", "Page, Lary",
           "Dorsey, Jack", "Glass, Noah",
           "Williams, Evan", "Stone, Urich")

temp <- strsplit(nomes, ", ")
temp
class(temp)

frase01 <- "Muitas vezes temos que repetir algo diversas vezes e essas diversas vezes parecem algo estranho"
palavras <- strsplit(frase01, " ")[[1]] # Indica um elemento dentro de uma lista
print(palavras)
unique(toupper(palavras)) # Retira as palavras repetidas e transforma todas em maiúsculas.

### STRSPLIT() COM DATAFRAME

antes01 <- data.frame(attr = c(8, 18, 28, 38), tipo = c("pao_e_agua", "pao_e_agua_02"))
print(antes01)

depois01 <- strsplit(as.character(antes01$tipo), "_e_")
print(depois01)

install.packages("stringr")
library(stringr)

str_split_fixed(antes01$tipo, "_e_", 2) # A saída é uma matriz

### FUNÇÃO DO.CALL()

antes01 <- data.frame(attr = c(8, 18, 28, 38), tipo = c("pao_e_agua", "pao_e_agua_02"))
print(antes01)

depois01 <- strsplit(as.character(antes01$tipo), "_e_")
print(depois01)

do.call(rbind, depois01)

### PACOTES DPLYR e TIDYR

install.packages("dplyr")
require(dplyr)
install.packages("tidyr")
library(tidyr)

antes01 <- data.frame(attr = c(8, 18, 28, 38), 
                      tipo = c("pao_e_agua", "pao_e_agua_02"))

antes01 %>%
  separate(tipo, c("pao", "agua"), "_e_")
