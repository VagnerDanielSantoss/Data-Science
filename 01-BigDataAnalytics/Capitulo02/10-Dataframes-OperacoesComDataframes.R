
#  Dataframes e Operações com Dataframes na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

### CRIA UM DATAFRAME VAZIO

dataframe01 <- data.frame()
print(dataframe01)
mode(dataframe01)
class(dataframe01)
typeof(dataframe01)

### CRIA VETORES VAZIOS

nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()

dataframe02 <- data.frame( c(codigos, nomes, idades, itens) )
print(dataframe02)

### CRIA VETORES PREENCHIDOS

codigo <- c(0001, 0015, 0073, 0100, 0198)
nome <- c("Franciane", "Caroline", "Amanda", "Rebeca", "Catherine")
pais <- c("Alemanha", "Canada", "Inglaterra", "Suecia", "Finlandia")
altura <- c(1.78, 1.64, 1.69, 1.81, 1.55)

### CRIA UM DATAFRAME DE DIVERSOS VETORES

pesquisa01 <- data.frame(codigo, nome, pais, altura)
print(pesquisa01)

### ADICIONA UM NOVO VETOR A UM DATAFRAME JÁ EXISTENTE

olhos <- c("Azul", "Castanho", "Castanho", "Verde", "Verde")
pesquisa02 <- cbind(pesquisa01, olhos)
print(pesquisa02)

### INFORMAÇÕES SOBRE O DATAFRAME

str(pesquisa02)
dim(pesquisa02)
length(pesquisa02)

### OBTER UM VETOR DE UM DATAFRAME

pesquisa02$nome
pesquisa02$pais

### EXTRAI UM ÚNICO VETOR

pesquisa02[3, 4]
pesquisa02[1, 2]

### NÚMERO DE LINHAS E COLUNAS

nrow(pesquisa02)
ncol(pesquisa02)

### PRIMEIROS ELEMENTOS DO DATAFRAME

head(pesquisa02)
View(mtcars)

### ÚLTIMOS ELEMENTOS DO DATAFRAME

tail(pesquisa02)
tail(mtcars)

### FILTRO PARA UM SUBSET DE DADOS QUE ATENDEM A UM CRITÉRIO

print(pesquisa02)
pesquisa02[altura > 1.70]
pesquisa02[altura > 1.70, ]
pesquisa02[altura > 1.70, c("nome", "pais")]

### DATAFRAME NOMEADOS

names(pesquisa02) <- c("Codigo", "Nome", "Pais", "Altura", "Olhos")
print(pesquisa02)

colnames(pesquisa02) <- c("Col01", "Col02", "Col03", "Col04", "Col05")
print(pesquisa02)
rownames(pesquisa02) <- c("Lin01", "Lin02", "Lin03", "Lin04", "Lin05")
print(pesquisa02)

### CARREGA UM ARQUIVO .CSV

?read.csv

pacientes <- data.frame(read.csv(file = "C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR/Arquivos/pacientes.csv", 
                                 header = TRUE,
                                 sep = ","))

### visualiza o dataframe

View(pacientes)
summary(pacientes)

### VISUALIZA AS VARIÁVEIS

pacientes$Nome
pacientes$Diabete
pacientes$Status

### HISTOGRAMA

hist(pacientes$Idade)

### COMBINAR DATAFRAME

dataset_final <- merge(x = pesquisa02, y = pacientes)
print(dataset_final)
