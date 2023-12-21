
# Lista de Exercícios - Capítulo 03

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho

# Coloque entre aspas o diretório de trabalho que você está usando no seu 
#computador

# Não use diretórios com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles/Exercicio")
getwd()

# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no 
# diretório de trabalho

dir(path = "C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")

### OU

list.files()


# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, 
# um lógico e um de números

vetor_caracteres <- c("Data", "Science", "R", "Python", "Spark", "C#")
vetor_logico <- c(TRUE, TRUE, FALSE, TRUE, FALSE, TRUE)
vetor_numeros <- c(100, 48, 17, 1, 54, 9)

dataframe_vetores <- data.frame(vetor_caracteres, vetor_logico, vetor_numeros)
View(dataframe_vetores)


# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número 
# e uma mensagem no console.

# Cria um Vetor

vetor01 <- c(12, 3, 4, 19, 34)
vetor01

for (numero in 1:length(vetor01)) {
  if (vetor01[numero] > 10)
    {print("O número %d é maior do que 10.", numero)}
}


# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console 
# cada elemento da lista

lista01 <- list(2, 3, 5, 7, 11, 13)
lista01

for (valor in 1:length(lista01)) {
  print(lista01[[valor]])
}


# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as 
# matrizes

matriz01 <- matrix(c(1:25), nrow = 5, ncol = 5, byrow = T)
matriz01
matriz02 <- t(matriz01)
matriz02

# Multiplicação element-wise

matriz_element_wise <- matriz01 * matriz02
print(matriz_element_wise)

# Multiplicação de matrizes

matriz_multiplicacao <- matriz01 %*% matriz02
print(matriz_multiplicacao)


# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de 
# cada um dos objetos

vetor02 <- c("R", "Python", "C#", "Azure", "Excel")
print(vetor02)
names(vetor02) <- c ("Coluna01", "Coluna02", "Coluna03", "Coluna04", "Coluna05")
print(vetor02)
###############################################################################
matriz03 <- matrix(c(10:34), ncol = 5)
print(matriz03)
dimnames(matriz03) <- list(c("Linha01", "Linha02", "Linha03", "Linha04", "Linha05"),
                           c("Coluna01", "Coluna02", "Coluna03", "Coluna04", "Coluna05"))
print(matriz03)
###############################################################################
super_lista <- list( Lista = "C#", "Python", "R", "Excel", "Azure", "Spark",
                    Vetor = c("C#", "Python", "R", "Excel", "Azure", "Spark"),
                    Matriz = matrix(c("C#", "Python", "R", "Excel", "Azure", "Spark"),
                           ncol = 2, byrow = TRUE))
print(super_lista)
##############################################################################

dataframe01 <- data.frame(Codigo = c(1:5),
                          Pais = c("Alemanha", "Canada", "Irlanda", "Japao", "Inglaterra"),
                          Renda_Percapita = c(13.328, 11.399, 83.849, 33.100, 33.049))
print(dataframe01)
View(dataframe01)


# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória 
# para 50 elementos da matriz.

# Dica: use a função sample()
?sample
?replace

matriz04 <- matrix(1:100, 10)
print(matriz04)

matriz04 [sample(matriz04, size = 50)] = NA
print(matriz04)


# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna

matriz05 <- matrix(c(1:25), nrow = 5, ncol = 5, byrow = T)
matriz05

?rowsum
matriz05_linha <- rowSums(matriz05, na.rm = FALSE )
matriz05_linha

matriz05_coluna <- colSums(matriz05, na.rm = FALSE)
matriz05_coluna


# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente

vetor_ordenar <- c(100, 10, 10000, 1000)
print(vetor_ordenar)

vetor_ordenado_crescente <- sort(vetor_ordenar)
print(vetor_ordenado_crescente)


# # Exercício 10 - Imprima no console todos os elementos da matriz abaixo 
# que forem maiores que 15

matriz06 <- matrix(c(1:50), nrow = 5, ncol = 10, byrow = T)

for (matriz in matriz06) {
  if(matriz > 15)
    {
      print(matriz)
    }
}
