y = c(98,98,98,93.5,93.5,96,90,94,96,92,91);
x = c(400,340,400,340,320,350,310,310,350,330,330);

plot(x,y)
reg = lm(y~x)
# 1. La velocidad de una lancha que tiene 93 pulgadas de ancho
b0 = reg$coefficients[1]
b1 = reg$coefficients[2]
Ecreg = b0 + b1 *(93)
# R: 76.93955

# 2. Bondad de ajuste del modelo generado en el literal 1. Haga un comentario sobre la bondad del ajuste.
# 0.5793547 -> 57.94% Esto significa que el modelo no puede explicar completamente la variabilidad en los datos,
# y es probable que haya otros factores que influyan en la velocidad de las lanchas además de la potencia del motor y la manga. 

# 3. De acuerdo con los datos, ¿cree usted que las lanchas más potentes, tienen mayor velocidad?. Justifique su respuesta a través de un gráfico y mediante una ecuación de regresión.
# Si creo que las lanchas más potentes tienen mayor velocidad. 
# Esto se debe a que el análisis muestra una relación positiva entre la potencia del motor y la velocidad máxima de la lancha. 
# Además, la ecuación de regresión lineal obtenida indica que, en promedio, un aumento en la potencia del motor se asocia con un aumento en la velocidad máxima de la lancha.

