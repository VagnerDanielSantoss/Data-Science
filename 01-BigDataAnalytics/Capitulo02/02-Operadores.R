
# Operadores Básicos, Relacionais e Lógicos na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/02-FundamentosLinguagemR")
getwd()

### Operadores Básicos

## SOMA

10 + 2
2 + 10

## SUBTRAÇÃO

10 - 2
2 - 10

## MULTIPLICAÇÃO

10 * 2
2 * 10

## DIVISÃO

10 / 2
2 / 10

## POTENCIAÇÃO

10 ^ 2
10 ** 2

## MÓDULO (Resto da divisão)

10 %% 3
3 %% 10

### Operadores Relacionais (Faz comparação entre dois elementos)

# Atribuição de variáveis

variavel01 <- 10
variavel02 <- 7

## OPERADORES

variavel01 < 2
variavel01 > 10
variavel01 > 11
variavel01 <= 10
variavel01 >= 10
variavel01 > variavel02
variavel01 < variavel02
variavel01 == variavel02
variavel01 != variavel02

### OPERADORES LÓGICOS

## AND (Todas as condições precisam ser verdadeiras)

(variavel01 == 10) & (variavel02 < 6)
(variavel02 > variavel01) & (variavel01 > 15)
(variavel01 <= 15) & (variavel02 >= 7)
(variavel02 < 8) & (variavel02 < variavel01)

(variavel01 > 4) & (variavel01 == 10)
(variavel01 < 7) & (variavel02 < 7)
(variavel02 == variavel01) & (variavel01 != variavel02)
(variavel02 != 7) & (variavel02 == 7)

## OR (Uma das condições deve ser verdadeira)

(variavel01 > 4) | (variavel01 == 10)
(variavel01 < 7) | (variavel02 < 7)
(variavel02 == variavel01) | (variavel01 != variavel02)
(variavel02 != 7) | (variavel02 == 7)

(variavel01 == 10) | (variavel02 < 6)
(variavel02 > variavel01) | (variavel01 > 15)
(variavel01 <= 15) | (variavel02 >= 7)
(variavel02 < 8) | (variavel02 < variavel01)

## NOT (Resultado inverso da expressão)

print(!variavel01)
print(!variavel02)
