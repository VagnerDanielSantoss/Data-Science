
#  Fatores e Fatores Ordenados na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

### FATORES

vetor01 <- c("Macho", "Macho", "Femea", "Macho", "Femea", "Femea", "Femea")
print(vetor01)
mode(vetor01)
class(vetor01)
typeof(vetor01)

fator_vetor01 <- factor(vetor01)
print(fator_vetor01)
mode(fator_vetor01)
class(fator_vetor01)
typeof(fator_vetor01)
levels(fator_vetor01)

### VARIÁVEIS CATEGÓRICAS NOMINAIS
# Não existe uma ordem implícita

animais <- c("Pantera", "Tigre", "Rinoceronte", "Leao", "Ovelha", "Macaco")
print(animais)
mode(animais)
class(animais)
typeof(animais)

fator_animais <- factor(animais)
print(fator_animais)
mode(fator_animais)
class(fator_animais)
typeof(fator_animais)
levels(fator_animais)

### VARIÁVEIS CATEGÓRICAS ORDINAIS
# Possuem uma ordem natural

graduacao <- c("Mestrado", "Mestrado", "Bacharelado", "Pos-Graduacao", "Doutorado", "Doutorado", "Pos-Graduacao")
print(graduacao)
mode(graduacao)
class(graduacao)
typeof(graduacao)

fator_graduacao <- factor(graduacao)
print(fator_graduacao)
mode(fator_graduacao)
class(fator_graduacao)
typeof(fator_graduacao)
levels(fator_graduacao)

fator_graduacao01 <- factor(graduacao, 
                            ordered = TRUE, 
                            levels = c("Doutorado", "Mestrado", "Pos-Graduacao", "Bacharelado"))
print(fator_graduacao01)
mode(fator_graduacao01)
class(fator_graduacao01)
typeof(fator_graduacao01)
levels(fator_graduacao01)

### SUMARIZA OS DADOS FORNECE UMA VISÃO GERAL SOBRE O CONTEÚDO DAS VARIÁVEIS

summary(graduacao)
summary(fator_graduacao)
summary(fator_graduacao01)

### ALTERAR NOME DOS ELEMENTOS

vetor02 <- c("M", "M", "F", "M", "F", "M", "M", "F", "M", "M", "M", "F", "F", "F", "F", "M")
print(vetor02)
mode(vetor02)
class(vetor02)
typeof(vetor02)

fator_vetor02 <- factor(vetor02)
print(fator_vetor02)
mode(fator_vetor02)
class(fator_vetor02)
typeof(fator_vetor02)

# ALTERAR
levels(fator_vetor02) <- c("Femea", "Macho")
print(fator_vetor02)

summary(vetor02)
summary(fator_vetor02)

### NOVOS EXEMPLOS

vetor03 <- c(3, 8, 8, 3, 1, 1, 8, 1, 3)
print(vetor03)
mode(vetor03)
class(vetor03)
typeof(vetor03)

fator_vetor03 <- factor(vetor03)
print(fator_vetor03)
mode(fator_vetor03)
class(fator_vetor03)
typeof(fator_vetor03)

romano_fator_vetor03 <- factor(vetor03, labels = c("I", "III", "VIII"))
print(romano_fator_vetor03)

### FATORES NÃO ORDENADOS

vetor04 <- c("A", "B", "C", "AB", "AA", "BC", "CC", "D")
print(vetor04)

### TRANSFORMA OS DADOS
# A linguagem R criou os níveis, o que não significa que existe uma hierarquia.

fator_vetor04 <- factor(vetor04)
print(fator_vetor04)
class(fator_vetor04)
is.ordered(fator_vetor04)

### FATOR ORDENADO

fator_ordenado_vetor04 <- factor(fator_vetor04,
                                 levels = c("CC", "BC", "AB", "AA", "D", "C", "B", "A"),
                                 ordered = TRUE)
print(fator_ordenado_vetor04)
is.ordered(fator_ordenado_vetor04)
as.numeric(fator_ordenado_vetor04)
table(fator_ordenado_vetor04)

### FATORES E DATAFRAMES

dataframe_etnias <- read.csv2("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles/Arquivos/etnias.csv", 
                              sep = ",", stringsAsFactors = TRUE)
View(dataframe_etnias)
str(dataframe_etnias)
class(dataframe_etnias)

dataframe_etnias <- factor(dataframe_etnias$Etnia)
print(dataframe_etnias)
str(dataframe_etnias)
is.atomic(dataframe_etnias)

### NÍVEIS DOS FATORES
## Internamente, a linguagem R armazena valores inteiros e faz um mapeamento para as strings 
## (em ordem alfabética) e agrupa as estatísticas por níveis, agora, se for feita uma 
## sumarização de estatística, é possível visualizar a contabilização de cada categoria.

summary(dataframe_etnias)
levels(dataframe_etnias$Etnia)
summary(dataframe_etnias$Etnia)

### PLOT
## Agora, se for feito um plot, teremos um boxplot para estas variáveis categóricas.

plot(dataframe_etnias$Idade ~ dataframe_etnias$Etnia, 
     xlab = "Etnias", ylab = "Idade",
     main = "Idade por Etnias")

### REGRESSÃO

summary(lm(Idade ~ Etnia, data = dataframe_etnias))

### CONVERTE UMA COLUNA EM VARIÁVEL CATEGÓRICA. ISSO CRIARÁ UM FATOR NÃO-ORDENADO.

View(dataframe_etnias)
str(dataframe_etnias)

dataframe_etnias$Estado_Civil_categoria <- factor(dataframe_etnias$Estado_Civil,
                                                  labels = c("Solteiro", "Casado", "Divorciado"))
View(dataframe_etnias)
str(dataframe_etnias)
