
# Listas, Operações com LIstas e Listas Nomeadas na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

### USE list() PARA CRIAR LISTAS

## LISTA DE STRINGS

lista_caracter01 <- list("A", "B", "C", "D", "E")
print(lista_caracter01)
lista_caracter02 <- list(c("A", "B", "C"), "C", "D", "E")
print(lista_caracter02)
lista_caracter03 <- list(matrix(c("A", "A", "A", "A"), nrow = 2), "B", "C", "D", "E")
print(lista_caracter03)

class(lista_caracter03)
mode(lista_caracter03)
typeof(lista_caracter03)

## LISTA DE NÚMEROS INTEIROS

lista_inteiros01 <- list(50, 2, 77, 104, 16)
print(lista_inteiros01)

class(lista_inteiros01)
mode(lista_inteiros01)
typeof(lista_inteiros01)

## LISTA DE FLOATS

lista_floats <- list(50.4, 2.1, 77.3, 104.9, 16.5)
print(lista_floats)

class(lista_floats)
mode(lista_floats)
typeof(lista_floats)

## LISTA DE NÚMEROS COMPLEXOS

lista_complexos <- list(50.4+3i, 2.1+3i, 77.3+3i, 104.9+3i, 16.5+3i)
print(lista_complexos)

class(lista_complexos)
mode(lista_complexos)
typeof(lista_complexos)

## LISTA DE VALORES LÓGICOS

lista_logicos <- list(FALSE, FALSE, TRUE, FALSE, TRUE)
print(lista_logicos)

class(lista_logicos)
mode(lista_logicos)
typeof(lista_logicos)

## LISTA COMPOSTA

lista_composta01 <- list("Data Science", 1000, TRUE, 9.99)
print(lista_composta01)

lista_composta02 <- list(25:34, c("Thaya", "Flor", "Emylee"), rnorm(10))
print(lista_composta02)

class(lista_composta02)
mode(lista_composta02)
typeof(lista_composta02)

## HELP

?rnorm

## SLICING (fatiamento) da Lista

lista_composta01[3]
lista_composta01[5] # Não existe este elemento na Lista
lista_composta02[[2]] [3]
lista_composta02[[3]] [8]

## LISTA NOMEADA

names(lista_composta01) <- c("Caracter", "Número", "Lógico", "Float")
print(lista_composta01)

vetor_numeros <- c(1:4)
print(vetor_numeros)
vetor_caracter <- c("A", "B", "C", "D")
print(vetor_caracter)

lista_nomeada01 <- list(Numeros = vetor_numeros, caracter = vetor_caracter)
print(lista_nomeada01)

## NOMEAR OS ELEMENTOS DIRETAMENTE NA CRIAÇÃO

lista_nomeada02 <- list(inteiros = 10:15, float = c(10.10, 11.11, 12.12, 13.13, 14.14, 15.15))
print(lista_nomeada02)

## ELEMENTOS ESPECÍFICOS DA LISTA

lista_nomeada02$numeros
length(lista_nomeada02$float)
lista_nomeada02$float

## CONFIRMA O COMPRIMENTO DA LISTA

length(lista_nomeada02) # Inteiros e Floats

## EXTRAÇÃO DE UM ELEMENTO ESPECÍFICO DENTRO DE CADA NÍVEL DA LISTA

lista_nomeada02$float[3]

## INFORMAÇÕES SOBRE OS ELEMENTOS

class(lista_nomeada02$inteiros)
mode(lista_nomeada02$inteiros)
typeof(lista_nomeada02$inteiros)

## COMBINAR DUAS LISTAS

lista_combinada <- c(lista_nomeada01, lista_nomeada02)
print(lista_combinada)

## TRANSFORMA UM VETOR EM UMA LISTA

vetor_lista <- c(30:39)
print(vetor_lista)

lista_vetor <- as.list(vetor_lista)
print(lista_vetor)

## UNE DOIS ELEMENTOS EM UMA LISTA

matriz01 <- matrix(100:109, nrow = 2)
print(matriz01)

vetor01 <- c(10:19)
print(vetor01)

une_elementos <- list(matriz01, vetor01)
print(une_elementos)
