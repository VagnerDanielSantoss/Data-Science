
#  Trabalhando com datas na Linguagem R

# OBS: Caso tenha problemas com a acentuação, consulte o link:
## https://support.rstudio.com/hc/en-us/articles/200532197-character-encoding

# Configuração do diretório de trabalho:
# Colocar entre aspas o diretório de trabalho que será utilizado.
# Não utilizar diretório com espaço no nome

setwd("C:/DataScience/Scripts/01-BigDataAzureMachineLearning/03-LinguagemR_Fatores_EstruturasDeControles")
getwd()

### HORA E DATA DO SYSTEMA

hoje <- Sys.Date()
print(hoje)
class(hoje)
Sys.time()
Sys.timezone()

### DATA -- Representada por DATE
## Armazenadas como número de dias desde 01 de Janeiro de 1970

### TIME - Representada por POSIXCT
## Armazenadas como números de segundos desce 01 de Janeiro de 1970

### FORMATAÇÃO DE  DATAS

## %d = Dias do mês com dois dígitos (27)
## %m = Mês com dois dígitos (02)
## %y = Ano com dois dígitos (76)
## %Y = Ano com quatro dígitos (1976)
## %a = Dia da semana abreviada (Sex)
## %A = Dia da semana escrito por extenso (Sexta)
## %b = Mês abrevidado (Fev)
## %B = Mês escrito por extenso(Fevereiro)

### FORMATAÇÃO DE HORAS

## %H = Hora (00:00 - 23:00)
## %M = Minutos
## %S = Segundos
## %T = Formato reduzido para %H:%M:%S

?strptime

### FORMATAÇÃO DA SAÍDA - as.Date()

as.Date("2023-09-26")
as.Date("set-26-23", format = "%b-%d-%y")
as.Date("28 Setembro, 2023", format = "%d %B, %Y")

### FUNÇÃO FORMAT()

Sys.Date()
?format
format(Sys.Date(), format = "%d %B, %Y")
format(Sys.Date(), format = "%d de %B de %Y")
format(Sys.Date(), format = "Hoje é %A !!!")

### CONVERSÃO DE DATAS - POSIXCT

?POSIXct

data01 <- "set 26, '23 hora:23 minutos:59 segundos:57"
data01_convertida <- as.POSIXct(data01, format = "%B %d, '%y hora:%H minutos:%M segundos:%S")
print(data01_convertida)

### OPERAÇÕES COM DATAS

?as.Date

data_hoje <- as.Date("2023-11-12", format = "%Y-%m-%d")
print(data_hoje)
data_hoje + 1 # Acrescentou 1 DIA na data

my_time <- as.POSIXct("2022-12-31 23:58:59")
my_time
my_time + 1 # Acrescentou 1 SEGUNDO na HORA

my_time02 <- as.POSIXct("2022-12-31 23:59:59")
my_time02
my_time02 + 1 # Acrescentou 1 SEGUNDO na HORA

data_hoje - as.Date(my_time) # Diferença entre as duas datas em DIAS
data_hoje - my_time # Métodos incompatíveis = POSIxt x Date

### CONVERSÃO DE DATAS EM FORMATO ESPECÍFICO

## O vetor de números pode representar o número de dias, horas ou minutos 
## (de acordo com o que queira converter)

## A Linguagem R considera o ponto de início a data de 01 de Janeiro de 1970 
## e contabiliza o total de horas, minutos ou segundos, aquilo que o vetor 
## numérico representar

dts = c(1127056501,1104295502,1129233601,1113547501,1119826801,1132519502,1125298801,1113289201)
mydates = dts

## POSIXct, armazena os segundos desde uma data específica, 
## convertendo os valores numéricos (que podem representar horas, minutos ou 
## segundos) desde 01 de Janeiro de 1970

## POSIXt é a classe principal e POSIXct e POSIXlt são subclasses.

## Poderíamos usar aqui apenas POSIXct, que é a subclasse 
## (mas não é possível usar apenas a classe principal)

class(mydates) = c('POSIXt','POSIXct')
mydates
class(mydates)

mydates = structure(dts, class = c('POSIXt','POSIXct'))
mydates

### FUNÇÃO ISODATE
## Coloca a data no formato padrão

?ISOdate

iso01 <- ISOdate(1999, 12, 31)
print(iso01)

iso02 <- ISOdate(2009, 12, 31)
iso02

iso02 - iso01 # Resultado mostrado em DIAS

difftime(iso02, iso01, units = "weeks")

### PACOTE LUBRIDATE

install.packages("lubridate")
require(lubridate)

?lubridate

ymd("20010227")
mdy("04-20-1980")
dmy("06/11/2005")

?tz

partida <- ymd_hms("2004-01-20 23:00:00", tz = "america/sao_paulo")
chegada <- ymd_hms("2004-07-13 14:25:48", tz = "america/sao_paulo")

partida
print(chegada)

second(chegada)
second(chegada) <- 7
chegada

wday(partida) # DIA da semana (Dom, Seg, Ter, Qua, ...)
wday(chegada, label = TRUE)

class(partida)
class(chegada)

### CRIA UM OBJETO QUE ESPECIFICA A DATA DE INÍCIO E DATA DE FIM

interval(chegada, partida)

tm1.lub <- ymd_hms("2019-08-01 13:31:13")
print(tm1.lub)

tm2.lub <- mdy_hms("03/21/22 07:44:28")
tm2.lub

year(tm1.lub)
week(tm1.lub)

tm1.dechr <- hour(tm1.lub) + minute(tm1.lub) / 60 + second(tm1.lub) / 3600
tm1.dechr
force_tz(tm1.lub, "america/sao_paulo")
 
### GERA UM DATAFRAME DE DATAS

sono <- data.frame(bed.time = ymd_hms("2013-09-01 23:05:24", "2013-09-02 22:51:09", 
                                      "2013-09-04 00:09:16", "2013-09-04 23:43:31", "2013-09-06 00:17:41", "2013-09-06 22:42:27", 
                                      "2013-09-08 00:22:27"), rise.time = ymd_hms("2013-09-02 08:03:29", "2013-09-03 07:34:21", 
                                                                                "2013-09-04 07:45:06", "2013-09-05 07:07:17", "2013-09-06 08:17:13", "2013-09-07 06:52:11", 
                                                                                  "2013-09-08 07:15:19"), sleep.time = dhours(c(6.74, 7.92, 7.01, 6.23, 6.34, 7.42, 6.45)))
sono
sono$eficiencia <- round(sono$sleep.time/(sono$rise.time - sono$bed.time) * 100, 1)
sono

# GERA UM PLOT A PARTIR DE DATAS 

par(mar = c(5, 4, 4, 4))
plot(round_date(sono$rise.time, "day"), sono$eficiencia, type = "o", col = "blue", xlab = "Manhã", ylab = NA)
par(new = TRUE)
plot(round_date(sono$rise.time, "day"), sono$sleep.time/3600, type = "o", col = "red", axes = FALSE, ylab = NA, xlab = NA)
axis(side = 4)
mtext(side = 4, line = 2.5, col = "red", "Duração do Sono")
mtext(side = 2, line = 2.5, col = "blue", "Eficiência do Sono")
