
# Funções na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

### HELP

?sample
args(sample) # Visualiza os argumentos da função
args(mean)
args(sd)
args(seq)
?mean
?seq

### FUNÇOES BUILT-IN

abs(-128)
sum(c(10:15))
mean(c(10:15))
round(c(2.17, 8.105, 14.75, 3.1415, 1.0, 9.8, 5.4, 5.6))
rev(c(2.17, 8.105, 14.75, 3.1415, 1.0, 9.8, 5.4, 5.6))
rev(sort(c(2.17, 8.105, 14.75, 3.1415, 1.0, 9.8, 5.4, 5.6), decreasing = FALSE))
rev(sort(c(2.17, 8.105, 14.75, 3.1415, 1.0, 9.8, 5.4, 5.6), decreasing = TRUE))
seq(10,15) # Nesta versão, usa-se a virgula "," e não os dois pontos ":" como nas versõs anteriores.
append(c(10:15), 16)

### FUNÇÃO DENTRO DE FUNÇÃO

plot(rnorm(15))
mean(sum(round(c(2.17, 8.105, 14.75, 3.1415, 1.0, 9.8, 5.4, 5.6), digits = 2)))
round(c(1.999, 2.000, 3.3333), digits = 2)

### CRIA FUNÇÃO

funcao01 <- function(w)
  {
    w * 2
  }

funcao01(2)
class(funcao01)
typeof(funcao01)
mode(funcao01)
#################################################
funcao02 <- function(h, i)
  {
    valor <- h ^ i
    print(valor)
  }

funcao02(4, 4)
class(funcao01)
typeof(funcao01)
mode(funcao01)
#################################################

### ESCOPO LOCAL
jogando_dados <- function()
  {
    numero01 <- sample(1:6, size = 1) # Escopo Local
    print(numero01)
  }

jogando_dados()

### ESCOPO GLOBAL

print(numero01)
numero02 <- c(1:6) # Escopo Global
print(numero02)
sprintf(numero02, fmt = "%.2f")

### FUNÇÕES SEM NÚMEROS DEFINIDOS DE ARGUMENTOS

vetor01 <- c(50:55)
vetor02 <- c("A", "B", "C", "D", "E", "F")
vetor03 <- c(55.9, 54.1, 53.3, 52.7, 51.0, 50.6)

funcao03 <- function(...)
  {
    dataframe <- data.frame(cbind(...))
    print(dataframe)
  }

funcao03(vetor01)
funcao03(vetor01, vetor02)
funcao03(vetor01, vetor03)
funcao03(vetor02, vetor03)
funcao03(vetor02, vetor01, vetor03)

### FUNÇÃO BUILT-IN "NÃO TENTE RECRIAR A RODA"
## Comparação de eficiência entre função vetorizada e função "vetorizada na linguagem R"

x <- 1:10000000

### FUNÇÃO QUE CALCULA A RAÍZ QUADRADA DE CADA ELEMENTO DE UM VETOR DE NÚMEROS

raiz_quadrada <- function(numeros)
{
  resp <- numeric(length(numeros))
  
  for (numero in seq_along(numeros)) 
    {
    resp[numero] <- sqrt(numeros[numeros])
    }
    return(resp)
}

system.time(resultado01 <- raiz_quadrada(x))
system.time(resultado02 <- sqrt(x))

### CADA MÁQUINA PODE APRESENTAR RESULTADO DIFERENTE, POR CONTA DA PRECISÃO DO CÁLCULO
## DO PROCESSADOR.

identical(resultado01, resultado02)
