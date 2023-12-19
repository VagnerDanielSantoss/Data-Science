
# Vetores, Operações com Vetores e Vetores Nomeados na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

### VETOR DE STRINGS

vetor_caracter <- c("Data", "Science", "Python", "R")
print(vetor_caracter)

mode(vetor_caracter)
class(vetor_caracter)
typeof(vetor_caracter)

### VETOR DE FLOATS

vetor_float <- c(1.2, 2.4, 9.0, 125.4)
print(vetor_float)

mode(vetor_float)
class(vetor_float)
typeof(vetor_float)

### VETOR DE VALORES COMPLEXOS

vetor_complexo <- c(4.4+8i, 3.1+3i, 99.9+9i, 1.0+1i)
print(vetor_complexo)

mode(vetor_complexo)
class(vetor_complexo)
typeof(vetor_complexo)

### VETOR DE VALORES LÓGICOS

vetor_logico <- c(TRUE, TRUE, FALSE, TRUE)
print(vetor_logico)

mode(vetor_logico)
class(vetor_logico)
typeof(vetor_logico)

### VETOR DE NÚMEROS INTEIROS

vetor_inteiros <- c(10, 100, 1000, 5)
print(vetor_inteiros)

mode(vetor_inteiros)
class(vetor_inteiros)
typeof(vetor_inteiros)

### VETOR UTILIZANDO "SEQ( )"

vetor_sec <- seq(12:23)
print(vetor_sec)
is.vector(vetor_sec)

mode(vetor_sec)
class(vetor_sec)
typeof(vetor_sec)

### VETOR UTILIZANDO "REP( )"

vetor_rep <- rep(12:23)
print(vetor_rep)
is.vector(vetor_rep)

mode(vetor_rep)
class(vetor_rep)
typeof(vetor_rep)

### INDEXAÇÃO DE VETORES

vetor_indexacao01 <- c(50, 74, 101, 999, 4, 37, 18, 00, 51)
print(vetor_indexacao)
is.vector(vetor_indexacao)

mode(vetor_indexacao)
class(vetor_indexacao)
typeof(vetor_indexacao)

vetor_indexacao01[2]
vetor_indexacao01[8]
vetor_indexacao01[10] # Não existe este índice

vetor_indexacao02 <- c("Python", "C#", "R", "Excel", "Science", "Data")
print(vetor_indexacao02)
is.vector(vetor_indexacao02)

vetor_indexacao02[1]
vetor_indexacao02[6]

### COMBINAÇÃO DE VETORES

vetor_combinado01 <- c(7, 14, 21, 28, 35)
print(vetor_combinado01)

vetor_combinado02 <- c("A", "B", "C", "D", "E")
print(vetor_combinado02)

c(vetor_combinado01, vetor_combinado02)

### OPERAÇÕES COM VETORES (tamanhos iguais)

vetor_operacao01 <- c(10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)
vetor_operacao02 <- c(15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65)

vetor_operacao01 * 2
vetor_operacao01 / 2
vetor_operacao01 - vetor_operacao02
vetor_operacao01 + vetor_operacao02

### OPERAÇÕES COM VETORES (tamanhos diferentes)

vetor_operacao03 <- c(50, 60, 80)
vetor_operacao04 <- c(50, 60, 70, 80, 90)

vetor_operacao03 + vetor_operacao04
vetor_operacao03 - vetor_operacao04

### VETOR NOMEADO

vetor_nomeado01 <- c("Maria", "Carey")
print(vetor_nomeado01)

names(vetor_nomeado01) = c("Nome", "Sobrenome")
print(vetor_nomeado01)

vetor_nomeado01["Nome"]
vetor_nomeado01["Sobrenome"]
