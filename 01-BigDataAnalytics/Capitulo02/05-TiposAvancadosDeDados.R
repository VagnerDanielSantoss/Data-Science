
# Tipos Avançados de Dados na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

### VETOR: Possui 1 dimensão e 1 tipo de Dado.

vetor01 <- c(12:23)
print(vetor01)

mode(vetor01)
class(vetor01)
typeof(vetor01)
length(vetor01)

### MATRIZ: Possui 2 dimensões e 1 tipo de Dado.

matriz01 <- matrix(12:23, nrow = 2)
print(matriz01)

mode(matriz01)
class(matriz01)
typeof(matriz01)
length(matriz01)

### ARRAY: Possui 2 ou mais dimensões e 1 tipo de Dado.

array01 <- array(12:23, dim = c(4, 4, 2) )
print(array01)

mode(array01)
class(array01)
typeof(array01)
length(array01)

### DATAFRAME: Dados de diferentes tipos.
## Maneira mais fácil de explicar Dataframe: "É uma matriz com diferentes tipos de Dados."

View(iris)

mode(iris)
class(iris)
typeof(iris)
length(iris)

### LISTA: Coleção de diferentes objetos.
## Diferentes tipos de Dados são possíveis e comuns.

lista01 <- list(a = matriz01, b = vetor01)
print(lista01)

mode(lista01)
class(lista01)
typeof(lista01)
length(lista01)

### FUNÇÕES: As funções NÃO são tipos de Dados, mas SÃO consideradas como objetos na linguagem R.

funcao01 <- function(x)
{
  variavel01 <- x * x
  return(variavel01)
}

funcao01(10)

mode(funcao01)
class(funcao01)
typeof(funcao01)
length(funcao01)

### REMOVER OBJETO

objects()
rm(array01, funcao01)

objects()
