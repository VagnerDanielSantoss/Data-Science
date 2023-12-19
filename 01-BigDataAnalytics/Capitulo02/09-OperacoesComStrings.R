
# Operações com Strings na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

### STRING

texto01 <- "Cientista de Dados deve ser muito bem remunerado !"
print(texto01)
mode(texto01)
class(texto01)
typeof(texto01)

texto02 <- as.character(3.1415)
print(texto02)
mode(texto02)
class(texto02)
typeof(texto02)

### CONCATENAR STRINGS

nome <- "Nelson"; sobrenome <- "Mandela"
paste(nome, sobrenome)
cat(nome, sobrenome)

### FORMATAR UMA STRING

sprintf("A linguagem %s é uma linguagem de %s estatística.", "R", "análise")

### EXTRAIR PARTE DE UMA STRING

texto03 <- "A vida é um grande aprendizado cheia de oportunidades."
substr(texto03, start = 13, stop = 30)

?substr

### CONTAR O NÚMERO DE CARACTERES

nchar(texto03)

### ALTERA A CAPITALIZAÇÃO

tolower("Histogramas e elementos de Dados")
toupper("Histogramas e elementos de Dados")

### STRINGR

install.packages("stringr")
library(stringr)

### DIVIDE UMA STRING EM CARACTERES

strsplit("Histograma e elementos de Dados", NULL)

?strsplit

### DIVIDE UMA STRING EM CARACTERES APÓS O CARACTER "ESPAÇO"

strsplit("Histograma e elementos de Dados", " ")

### TRABALHAR COM STRINGS

string01 <- c("Esta é a primeira parte da minha string e será a primeira parte do meu vetor.",
              "Aqui a minha string continua, mas será transformada no segundo vetor.")

print(string01)

string02 <- c("É preciso testar outras strings - @*#$$%#$#@%%",
              "Análise de Dados na linguagem R")

print(string02)

### ADICIONA (junta) 2 STRINGS

str_c( c(string01, string02), sep = "")

### CONTAR QUANTAS VEZES UM CARACTER APARECE NO TEXTO

str_count(string01, "a")

### LOCALIZA A PRIMEIRA E A ÚLTIMA POSIÇÃO EM QUE O CARACTER APARECE NA STRING

str_locate_all(string01, "s")

### SUBSTITUI A PRIMEIRA OCORRÊNCIA DE UM CARACTER

str_replace(string02, "\\s", "   ")

### DETECTAR PADRÕES NAS STRINGS

string03 <- "13 Ago 2023"
string04 <- "1 Ago 2023"

padrao01 <- "Ago 20"

grepl(pattern = padrao01, x = string03) # Verdadeiro

padrao02 <- "Ago20"

grepl(pattern = padrao02, x = string03) # Falso
