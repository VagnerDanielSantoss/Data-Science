
#  Expressões Regulares na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

## GREP ==>
## GREPL ==>
## SUB ==>
## GSUB ==>
##
## 

string01 <- c("Expressões", "Regulares", "na linguagem R", "permitem a busca de padrões",
            "e exploraçao de textos", "pode-se buscar padrões em digitos", "como por exemplo",
            "109924512807851365")

length(string01)
string01

### GREP()

?grep

grep("ex", string01, value = FALSE)
grep("ex", string01, value = TRUE)

grep("\\d", string01, value = FALSE)
grep("\\d", string01, value = TRUE)

### GREPL()

grepl("\\d+", string01, value = FALSE) # Não é usado o argumento "value" com grepl()
grepl("\\d+", string01) # "\\d" = Digitos

grepl("\\D", string01) # "\\D" = NÃO Digitos

### SUB()

?sub

sub("em", "******", string01)
sub("ex", "EXXX", string01, ignore.case = FALSE)
sub("ex", "EXXX", string01, ignore.case = TRUE)

### GSUB()

?gsub

gsub("em", "******", string01)
gsub("ex", "EXXX", string01, ignore.case = FALSE)
gsub("ex", "EXXX", string01, ignore.case = TRUE)

### REGEXPR()

?regexpr

frase <- "O Cientista de Dados Deve Ser Muito Bem Remunerado !"
print(frase)
regexpr(pattern = "a", frase)

### GREPEXPR()

grepexpr(pattern = "a", frase) # NÃO existe mais nesta nova versão do R Studio


string02 <- c("1000 é maior do que 999",
              "Vamos escrever 14 scripts em linguagem R",
              "- #$¨&&*()%$  !!&¨%(&")

string02

### GSUB()

gsub("\\d", "", string02) # Substitui número por vazio
gsub("\\D", "", string02) # substitui não número por vazio
gsub("\\s", "", string02) # retira os espaços
gsub("[iot]", "QQQ", string02) # substitui os caracteres "i", "o" e "t" por "QQQ" onde houver qualquer um deles
gsub("[[:punct:]]", "", string02) # substitui os caracteres especiais por vazio
