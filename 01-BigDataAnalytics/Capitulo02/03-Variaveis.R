
# Variáveis na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

## Criação de variáveis

variavel01 <- 100
variavel01

mode(variavel01)
help("mode")
sqrt(variavel01)
typeof(variavel01)

## Atribuição do valor de uma variável a outra variável

variavel02 <- variavel01
print(variavel02)
mode(variavel02)
typeof(variavel02)
help("typeof")

## Lista de elementos de uma variável

variavel03 <- c("Primerio", "Segundo", "Terceiro", "Quarto", "Quinto")
print(variavel03)
mode(variavel03)
typeof(variavel03)

## Uma variável pode ser uma Função

variavel04 <- function(w)
{w + 2}

print(variavel04)
mode(variavel04)
typeof(variavel04)

## É possível mudar o modo da variável (Dado)

variavel01
variavel05 <- as.character(variavel01)
print(variavel05)
mode(variavel05)
typeof(variavel05)

## É possível atribuir valores a objetos

variavel06 <- c(1, 2, 3, 4, 5)
variavel06

c(6, 7, 8, 9, 10) -> variavel07
variavel07

assign("variavel06", c(1.2, 9.5, -4, 3)) # Foi sobrescrevido o conteúdo da variavel06 anterior para os novos valores
variavel06
mode(variavel06)
typeof(variavel06)

## É possível verificar o valor em uma posição específica

variavel06[2]
variavel06[5] # Não existe esta posição no vetor

## É possível verificar objetos

ls()
objects()

## É possível remover objetos

rm(variavel07)
print(variavel07)
