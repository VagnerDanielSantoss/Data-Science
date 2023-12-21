
# Estruturas de Controle na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

### IF

x <- 25

if(x < 30)
  {
    "Este número é menor que 30"
  }

### IF-ELSE

if(x < 7)
  {
    "Este número é menor que 7"
  } else
    {
      "Este número não é menor que 7"
    }

### COMANDOS ANINHADOS

x <- 7

if(x < 7)
  {
    "Este número é menor que 7."
  } else if (x == 7)
  {
    "Este número é igual a 7."
  } else
  {
    "Este número é maior que 7."
  }
 
### IF-ELSE JUNTOS

W <- 10

ifelse(W == 8, "VERDADEIRO ", "FALSO")

y <- 15

ifelse(y > 30, "MAIOR", "MENOR")

### EXPRESSÕES IFELSE ANINHADAS

h <- c(10, 8, 3)

ifelse(h > 4, "Maior que 4",
       ifelse(h == 4, "Igual a 4", "Menor que 4"))

### ESTRUTURA IFELSE DENTRO DE FUNÇÃO

funcao01 <- function(a, b)
  {
    ifelse(b < 4, a * b, a + b )
  }

funcao01(8, 3)
funcao01(3, 8)

### FUNÇÃO REP()

rep(rnorm(15), 10)
rep(rnorm(2), 2)

### FUNÇÃO REPEAT()

m <- 10

repeat{
  m <- m + 10
  if(m > 101)
    break
  print(m)
}

### LOOP FOR

for (contador in 10:100) {
  print(contador)
}

for(numero in rnorm(10)) {print(numero)}

### IGNORA ALGUNS ELEMENTOS DENTRO DO LOOP

for (i in 5:25) {
  if(i == 6 | i == 11 | i == 24)
    next
  print(i)
}

### INTERROMPE O LOOP

for (h in 1:10) {
  if(h == 7)
    break
  print(h)
}

### LOOP WHILE

z <- 8

while (z < 25) {
  z <- z + 2
  print(z)
}

### LOOP WHILE NÃO SERÁ EXECUTADO PORQUE A CONDIÇÃO NÃO SATISFAZ O CRITÉRIO DE INÍCIO

p <- 11

while (p < 10) {
  p <- p + 1
  print(p)
}
