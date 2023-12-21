
#  Fatores e Dataframes - Compreensão da Ordem dos Fatores na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

### NIVEIS DOS FATORES
## Internamente, a linguagem R armazena valores inteiros e faz um mapeamento para as strings
## (em ordem alfabética) e agrupa as estatísticas por níveis.

### CRIR VETORES

vetor01 <- c(1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007)
vetor02 <- c(0, 1, 1, 2, 0, 2, 2, 1)
vetor03 <- c("Azul", "Verde", "Verde", "Vermelho", "Azul", "Azul", "Vermelho", "Vermelho")

### UNIR UM VETOR EM UM DATAFRAME

dataframe01 <- data.frame(vetor01, vetor02, vetor03)
View(dataframe01)
print(dataframe01)
mode(dataframe01)
class(dataframe01)

### CONFIRMA QUE A LINGUAGEM R NESTA VERSÃO, NÃO CARACTERIZOU O VETOR03 COMO FATOR AUTOMATICAMENTE.

str(dataframe01)

### NÃO HÁ NÍVEIS DE FATORES DEVIDO A LINGUAGEM R NÃO TER CATEGORIZADO NENHUM VETOR.

levels(dataframe01$vetor01)
levels(dataframe01$vetor02)
levels(dataframe01$vetor03)

### CRIA A CATEGORIZAÇÃO DO VETOR03

dataframe01$fator_vetor03 <- factor(dataframe01$vetor03)
View(dataframe01)
str(dataframe01)

### VERIFICA OS NÍVEIS DO FATOR. NOTA-SE QEU OS NÍVEIS ESTÃO CATEGORIZADOS EM ORDEM ALFABÉTICA.

levels(dataframe01$fator_vetor03)

### CRIA UMA OUTRA COLUNA E ATRIBUI LABELS

dataframe01$cores <- factor(dataframe01$fator_vetor03, labels = c("Cor01", "Cor02", "Cor03"))
View(dataframe01)

### OBS: Internamente, os fatores são registrados como inteiros, mas a ordenação segue a 
## ordem alfabética das strings.

str(dataframe01)

### OBS: Nota-se como foi feita a atribuição:

## Azul = Cor01
## Verde = Cor02
## Vermelho = Cor03

### Ou seja, os vetores com os labels, seguiram a ordem alfabética dos níveis classificados
## pela linguagem R

### CRIA UMA OUTRA COLUNA E ATRIBUI OS LABELS
## Ao aplicar a função factor() na coluna vetor02, internamente a linguagem R classifica 
## em ordem alfabética e quando é atribuído os labels, é feito a associação.

dataframe01$fator_vetor02 <- factor(dataframe01$vetor02, labels = c("Divorciado", "Casado", "Solteiro"))
View(dataframe01)
str(dataframe01)
levels(dataframe01$fator_vetor02)
