
#  Exercícios na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR/Exercicio")
getwd()

## Exercício 01 - Crie um vetor com 30 números

vetor01 <- c(100:129)
print(vetor01)
mode(vetor01)
class(vetor01)
typeof(vetor01)

## Exercício 02 - Crie uma matriz com 4 linhas e 4 colunas preenchidas com números inteiros

matriz01 <- matrix(100:115, ncol = 4, nrow = 4)
print(matriz01)
mode(matriz01)
class(matriz01)
typeof(matriz01)

## Exercício 03 - Crie uma lista unindo o vetor e a matriz criados anteriormente

lista01 <- list(vetor01, matriz01)
print(lista01)
mode(lista01)
class(lista01)
typeof(lista01)

## Exercício 04 - Use a função read.table() e leia o arquivo do link abaixo para um Dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

help("read.table")

dataframe01 <- data.frame( read.table(file = "https://grodri.github.io/datasets/effort.dat") )
print(dataframe01)
View(dataframe01)
mode(dataframe01)
class(dataframe01)
typeof(dataframe01)

## Exercício 05 - Transforme o Dataframe anterior em um Dataframe nomeado com os seguintes labels: 
#(config, esfc, chang)

names(dataframe01) <- c("Config", "ESFC", "Chang")
View(dataframe01)
mode(dataframe01)
class(dataframe01)
typeof(dataframe01)

## Exercício 06 - Imprima na tela o Dataframe iris, verifique quantas dimensões existem no Dataframe e 
#imprima um resumo do Dataset

dataframe_iris <- iris
View(dataframe_iris)
dim(dataframe_iris)
mode(dataframe_iris)
class(dataframe_iris)
typeof(dataframe_iris)
str(dataframe_iris)
summary(dataframe_iris)

## Exercício 07 - Crie um plot simples utilizando as duas primeiras colunas do Dataframe iris

?plot

plot(x = iris$Sepal.Length, y = iris$Sepal.Width, ylab = "Sepal Width", xlab = "Sepal Length" )

## Exercício 08 - Utilize a função subset e crie um novo Dataframe com o conjunto de Dados do Dataframe iris
# em que Sepal.Length >= 7

?subset

dataframe_novo <- subset(iris, Sepal.Length >= 7)
View(dataframe_novo)
mode(dataframe_novo)
class(dataframe_novo)
typeof(dataframe_novo)

## Exercício 09 - DESAFIO: Crie um Dataframe que seja cópia do Dataframe iris e utilizando a função slice()
# divida o Dataframe em um subset de 15 linhas.
# DICA 01: Irá ser necessário instalar e carregar o pacote dplyr
# DUCA 02: Consulte o help para aprender como utilizar a função slice()

install.packages("dplyr")
library(dplyr)

iris_copia <- iris
??slice

iris_copia %>%
  slice_sample(n = 15)

slice_sample(iris_copia, n = 15)

## Exercício 10 - Utilize a função fllter() no novo Dataframe criado no item anterior e retorne apenas 
# valores em que Sepal.Length > 6.
# DICA 01: Utilize o RSiteSearch para aprender como usar a função filter()

?Filter
RSiteSearch("Filter")

iris_filter <- filter(iris_copia, Sepal.Length > 6)
View(iris_filter)
