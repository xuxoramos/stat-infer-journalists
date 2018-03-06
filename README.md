# Inferencia Estadística para Periodistas
Este es el repo que acompaña [esta presentación dada](https://www.slideshare.net/xuxoramos/inferencia-estadstica-para-periodistas) dada en el [OpenDataDay2018](https://socialtic.org/blog/open-data-day-2018-en-cdmx-aparta-la-fecha/).

# Interpretación
El siguiente snippet de código es la salida del comando de R ```t.test```, que es uno de los que ofrece el lenguaje para hacer pruebas de hipótesis.

```R
	Paired t-test

data:  pib_oax_pan$OAX and pib_oax_pri$OAX
t = 11.869, df = 4, p-value = 0.0002885
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  849.9735 1369.0341
sample estimates:
mean of the differences 
               1109.504 
```
De manera muy simplista, las salidas a notar y su interpretación son:
1. p-value: es la confianza de esta prueba de hipótesis. Como regla general, buscamos que sea ***< 0.05***.
2. 95 percent confidence interval: si en este intervalo se encuentra el 0, entonces no hay efecto y _aceptamos_ la hipótesis nula. De lo contrario, aceptamos la _hipótesis alterna_.

# Advertencia
Tanto el contenido de la presentación, como el contenido de este ejercicio, no tiene mucho rigor, y reconozco los problemas gigantescos de la escuela frecuentista, y en particular de usar el _p-value_ como medida de confianza. Este ejercicio pretende entregar la herramienta más manual en estadistica, y convertirla en una herramienta de validación para hacer un verdadero periodistmo de datos.
