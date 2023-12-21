
# Família APPLY - Uma Forma Elegante de Fazer Loop na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

###  APPLY() - Arrays e Matrizes
### TAPPLY() - Os Vetores Podem SEr Divididos em Diferentes Subsets
### LAPPLY() - Vetores e Listas
### SAPPLY() - Versão Amigável do LAPPLY()
### VAPPLY() - Similar ao SAPPLY(), Mas com Valor de Retorno Modificado
### RAPPLY() - Similar ao LAPPLY()
### EAPPLY() - Gera uma Lista
### MAPPLY() - Similar ao SAPPLY(), Multivariada
### BY

## Se estiver trabalhando com os objetos:

### LIST, NUMERIC, CHARACTER (list/vector) ==> SAPPLY() ou LAPPLY()
### MATRIX, DATA.FRAME (agregação por coluna) ==> BY ou TAPPLY()
### OPERAÇÕES POR LINHA OU OPERAÇÕES ESPECÍFICAS ==> APPLY()

### LOOP

lista01 <- list(numeros01 = (40:49), numeros02 = (90:99))
print(lista01)
mode(lista01)
class(lista01)
typeof(lista01)
str(lista01)

### CALCULA O TOTAL DE CADA ELEMENTO DA LISTA COM UM LOOP "FOR"

valor_a = 0
valor_b = 0

for (numero in lista01$numeros01) {
  valor_a = valor_a + numero
}

for (valor in lista01$numeros02) {
  valor_b = valor_b + valor
}

print(valor_a)
print(valor_b)

### CALCULA CADA ELEMENTO DA LISTA COM SAPPLY() e LAPPLY()

?sapply
?lapply

sapply(lista01, sum)
lapply(lista01, sum)

### APLICA FUNÇÃO COM SAPPLY() e LAPPLY()

sapply(lista01, mean)
lapply(lista01, mean)

### APPLY()

?apply

matriz01 <- matrix(c(1, 3, 5, 7, 11, 13, 17, 19, 23), nrow = 3, byrow = TRUE)
print(matriz01)

apply(matriz01, mean) # Margem = 1 - linha, 2 - coluna.
apply(matriz01, 1, mean)
apply(matriz01, 2, mean)
apply(matriz01, 1, plot)
apply(matriz01, 2, plot)

resultado_apply <- apply(matriz01, 1, mean)
print(resultado_apply)

### APLICA A FUNÇÃO APPLY() EM UM DATAFRAME

escola <- data.frame(aluno = c("Suzete", "Rose", " Ana", "Danieli", "Viviane"),
                     matematica = c(9.5, 3.0, 4.0, 8.5, 10.0),
                     portugues = c(7.0, 5.0, 9.5, 7.0, 9.5),
                     fisica = c(7.0, 2.0, 4.5, 6.5, 9.5))

View(escola)
print(escola$matematica)

### CALCULA A MÉDIA POR ALUNO

escola$Media = NA
View(escola)

escola$Media <- apply(escola[ , c(2, 3, 4)], 1, mean)
View(escola)
print(escola)

escola$Media <- round(escola$Media, digits = 1)
View(escola)
print(escola)

### TAPPLY()

?tapply

?gl
?LETTERS

tabela_basquete <- data.frame(Equipes = gl(5, 5, labels = paste("Equipe", LETTERS[1:5])),
                              Jogadores = sample(letters, 25),
                              Num_Cestas = floor(runif(25, min = 0, max = 110)))

View(tabela_basquete)
summary(tabela_basquete)

### COMO CALCULAR O TOTAL DE CESTAS POR EQUIPE ?

### TAPPLY() x SQLDF

install.packages("sqldf")
library(sqldf)

sqldf("SELECT equipes, SUM(num_cestas) FROM tabela_basquete GROUP BY equipes")

tapply(tabela_basquete$Num_Cestas, tabela_basquete$Equipes, sum)
tapply(tabela_basquete$Num_Cestas, tabela_basquete$Equipes, mean)

### BY

?by
?rnorm

dataframe_iris <- data.frame(species = c(rep(c(1, 2, 3), 
                                             each = 5)), 
                                             petal.length = c(rnorm(5, 4.5, 1),
                                                              rnorm(5, 4.5, 1),
                                                              rnorm(5, 5.5, 1)),
                                             petal.width = c(rnorm(5, 2.5, 1),
                                                             rnorm(5, 2.5, 1),
                                                             rnorm(5, 4, 1)))

dataframe_iris$species <- factor(dataframe_iris$species)
View(dataframe_iris)

by(dataframe_iris, dataframe_iris$species, function(x)
  {
    # Calcula o comprimento médio da pétala para cada espécie.
    mean.pl <- mean(x$petal.length)
  }
)

### LAPPLY()

?lapply

lista02 <- list(h = (2:11), z = (45:54))
print(lista02)

lapply(lista02, sum)
sapply(lista02, sum)

### VAPPLY()

?vapply

vapply(lista02, 
       fivenum, 
       c(Min = 0, "1st Qu." = 0, Median = 0, "3rd Qu." = 0, max = 0))

### REPLICATE

?replicate

replicate(15, runif(5))

### MAPPLY()

?mapply

mapply(rep, 5:15, 10:3)

### RAPPLY()

?rapply

lista03 <- list(valor_01 = c(1:6), valor_02 = c(12:17))
print(lista03)

rapply(lista03, sum)
rapply(lista03, sum, how = "list")
