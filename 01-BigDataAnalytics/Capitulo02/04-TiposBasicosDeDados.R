
# Tipos Básicos de Dados na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

### Numeric - Todos os números criados na linguagem R são do modo numeric
## São armazenados como números decimais (double)

numero01 <- 8
print(numero01)
class(numero01)
mode(numero01)
typeof(numero01)

numero02 <- 8.9
print(numero02)
class(numero02)
mode(numero02)
typeof(numero02)

# INTEIROS (integer)
# Conversão do tipo numeric para integer

numero03 <- 1000
print(numero03)
is.integer(numero03)
typeof(numero03)
numero04 <- as.integer(numero03)
print(numero04)
is.integer(numero04)
typeof(numero04)
mode(numero04)
class(numero04)

# Situações de conversões possíveis e não possíveis

as.integer("2.99") # Possível
as.integer("2") # Possível
as.integer("R") # Não Possível
as.integer('Python') # Não Possível
as.integer(3.1415) # Possível
as.integer(TRUE) # Possível
as.integer("TRUE") # Não Possível

# Caracteres (character)

caracter01 <- "W"
print(caracter01)
typeof(caracter01)
mode(caracter01)
class(caracter01)

caracter02 <- "Cientista"
print(caracter02)
typeof(caracter02)
mode(caracter02)
class(caracter02)

caracter03 <- c("Cientista", "De", "Dados")
print(caracter03)
typeof(caracter03)
mode(caracter03)
class(caracter03)

# Complexo (complex)

complexo01 <- 9 + 9i
print(complexo01)
typeof(complexo01)
mode(complexo01)
class(complexo01)

sqrt(-1)
sqrt(-1 + 0i)
sqrt(as.complex(-1))

# Lógico (Logic)

logic01 <- 12; logic02 <- 9

logic03 <- logic01 < logic02
print(logic03)
class(logic04)

logic04 <- logic01 > logic02
print(logic04)
class(logic04)

logic05 <- TRUE; logic06 <- FALSE
class(logic05)

logic05 & logic06 # Os dois são verdadeiros ?

logic05 | logic06 # Um ou outro é verdadeiro ?

!logic05
!logic06

# Operações com zero (0)

zero01 <- 10 / 0
print(zero01)

zero02 <- 0 / 10
print(zero02)

# Erro

erro01 <- "C#" / 8
erro02 <- 8 / "C#"
