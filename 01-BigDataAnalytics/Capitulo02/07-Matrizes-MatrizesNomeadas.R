
# Matrizes, Operações com Matrizes e Matrizes Nomeadas na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

### CRIAÇÃO DE MATRIZ

## Número de linhas

matriz01 <- matrix(c(9, 8, 7, 6, 5, 4), nrow = 2)
print(matriz01)
matriz02 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)
print(matriz02)
matriz03 <- matrix(c(9, 1, 8, 2, 7, 3), nrow = 6)
print(matriz03)

## Número de colunas

matriz04 <- matrix(c(4, 5, 6, 2, 5, 8), ncol = 2)
print(matriz04)
matriz05 <- matrix(c(9, 5, 2, 7, 3, 8), ncol = 3)
print(matriz05)
matriz06 <- matrix(c(3, 5, 7, 1, 5, 9), ncol = 6)
print(matriz06)

### HELP

?matrix

## Matrizes precisam possuir um número de elementos que seja múltiplo do número delinha

matriz07 <- matrix(c(1, 2, 3, 4, 5), ncol = 2)
print(matriz07)
matriz08 <- matrix(c(1, 2, 3, 4, 5), nrow = 2)
print(matriz08)

### CRIAÃO DE MATRIZES A PARTIR DE VETORES E PREENCHIMENTO A PARTIR DAS LINHAS

matriz_dados <- c(40:49)

matriz09 <- matrix(data = matriz_dados, nrow = 5, ncol = 2, byrow = TRUE) # Preenchimento por LINHA
matriz10 <- matrix(data = matriz_dados, nrow = 5, ncol = 2, byrow = FALSE) # Preenchimento por COLUNA (padrão)

### FATIAMENTO DE MATRIZ

matriz11 <- matrix(c(10, 18, 3, 9, 55, 4, 37, 89, 61, 51), nrow = 2)
print(matriz11)

matriz11[1, 1]
matriz11[1, 5]
matriz11[2, 5]
matriz11[2, 6] # Não existe este elemento
matriz11[,  1] # Todas as linhas da coluna 1
matriz11[1,  ] # Todas as colunas da linha 1

### CRIAÇÃO DE UMA MATRIZ DIAGONAL

matriz12 <- (1:4)
print(matriz12)

diag(matriz12)

### EXTRAÇÃO DE VETOR DE UMA MATRIZ DIAGONAL

vetor01 <- diag(matriz12)
diag(vetor01)

### TRANSPOSTA DE UMA MATRIZ

matriz_transposta01 <- matrix(c(2, 4, 6, 8), nrow = 2, ncol = 2)
print(matriz_transposta01)
t(matriz_transposta01)

matriz13 <- t(matriz_transposta01)
print(matriz13)

### OBTER A INVERSA DE UMA MATRIZ

solve(matriz_transposta01)

### OPERAÇÕES COM MATRIZES

matriz14 <- matrix(c(10, 20, 30, 40, 50, 60), nrow = 3)
print(matriz14)
matriz15 <- matrix(c(10, 10, 10, 10, 10, 10), nrow = 3)
print(matriz15)

matriz14 + matriz15
matriz14 - matriz15
matriz14 * matriz15
matriz14 / matriz15

### MULTIPLICAÇÃO DE MATRIZ COM VETOR

vetor02 <- c(100:105)
print(vetor02)
matriz16 <- matrix(c(1, 3, 5, 7, 9, 11), nrow = 2)
print(matriz16)

vetor02 * matriz16

### NOMEAÇÃO DE MATRIZ

matriz17 <- matrix(c("Terra", "Plutao", "Marte", "Saturno", "Netuno", "Urano"), nrow = 2)
print(matriz17)

dimnames(matriz17) = (list(c("Linha01", "Linha02"), c("Planetas01", "Planetas02", "Planetas03")))
print(matriz17)

### IDENTIFICAÇÃO DE LINHAS E COLUNAS NO MOMENTO DA CRIAÇÃO DE UMA MATRIZ

matriz18 <- matrix(c(2, 4, 6, 8, 10, 12), 
                   nrow = 2, 
                   ncol = 3, 
                   dimnames = list(c("Linha01", "Linha02"),
                                   c("Coluna01", "Coluna02", "Coluna03")))

print(matriz18)

### COMBINAÇÃO DE MATRIZES

matriz19 <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8), ncol = 2)
print(matriz19)
matriz20 <- matrix(c(8, 7, 6, 5, 4, 3, 2, 1), ncol = 2)
print(matriz20)

cbind(matriz19, matriz20)
rbind(matriz19, matriz20)

### DESCONTRUÇÃO DA MATRIZ

c(matriz20) # Transformada em vetor somente neste momento.
print(matriz20) # Continua sendo uma matriz.
