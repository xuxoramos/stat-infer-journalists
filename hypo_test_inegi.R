library(readr)
# manipulación de datos
library(dplyr)
# Nueva librería de inferencia estadística
library(infer)

# Lectura de CSV con PIB estatales http://www.inegi.org.mx/sistemas/bie/?idserpadre=10200070#D10200070
BIE_BIE20180302231537 <- read_csv("data/BIE_BIE20180302231537.csv")

# Se obtienen las series de Producto Interno Bruto estatal para Oaxaca, en el período de 2012 a 2016 (con gobierno de coalición), y de 2008 a 2012 (con gobierno del PRI).
pib_oax_pan <- BIE_BIE20180302231537 %>% select(Periodo, OAX) %>% filter(between(Periodo, 2012, 2016))
pib_oax_pri <- BIE_BIE20180302231537 %>% select(Periodo, OAX) %>% filter(between(Periodo, 2008, 2012))
# Se ejecuta una prueba T pareada, que es la adecuada cuando se está probando la diferencia estadísticamente significativa de 2 medias, obtenidas de observar en 2 momentos diferentes del tiempo a una misma población.
t.test(pib_oax_pan$OAX, pib_oax_pri$OAX, paired = T)