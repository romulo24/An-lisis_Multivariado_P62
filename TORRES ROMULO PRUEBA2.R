manga = c(98,98,98,93.5,93.5,96,90,94,96,92,91)
hp = c(400,340,400,340,320,350,310,310,350,330,330)
velocidad = c(47.5,44.9,47.3,44.5,44.5,42.5,45.8,42.8,43.2,45.3,47.7)
# 1. Si se desea predecir el ancho de una lancha en función de la potencia del motor. 
reg = lm (manga~hp)
Ecr = 70.41 + 0.070 *(hp)
# Determine si existe algún valor influyente. Justifique su respuesta indicando el treshold.
treshold = 3*(1+1)/11 # R: 0.5454545
hi = influence(reg)$hat
# PARA SER CONSIDERAdo UN VALOR INFLUYENTE LOS VALORES DEBEN SER MAYORES AL TRESHOLD DE 0.5454545
# POR LO TANTO SE DEFINE QUE NO EXISTEN VALORES INFLUYENTES.

# 2. En el diagrama de dispersión del literal anterior, se observa algún outlier?
plot(reg)
# EN LA GRAFICA DE DISPERSION SE PUEDE OBSERVAR UN VALOR QUE SE ENCUENTA AISLADO 
# PERO PARA DEFINIR SI ES UN OUTLIER TENEMOS QUE VERIFICAR CON LOS VALORES DE LOS RESIDUALES ESTANDARIZADOS
# Y VERIFICAR QUE LOS VALORES ESTE FUERA DE ESTE RANGO [-2,2] PARA SER CONSIDERADOS OUTLIERS

# 3. Si se desea predecir la velocidad de la lancha tomando en cuenta el ancho máximo de la lancha.
reg2 = lm (velocidad~manga)
# Compruebe gráficamente si se cumple con la propiedad de homocedasticidad.
# R: En La grafica no se observar un patrón sistemático en la dispersión de los puntos alrededor de la línea horizontal 
# por lo cual los puntos deben estan dispersos de manera aleatoria y no tienen un patrón claro para definir que hay la propiedad
# de homocedasticidad.

# 4. Para el literal anterior, se cumple afirma que las perturbaciones siguen una distribución normal. Justifique su respuesta, gráficamente. 
plot(reg2)
# R: Usando la Grafica (Normal Q-Q) podemos definir que las perturbaciones si siguen una  distribucion normal
# debido a que los puntos se acerquen a la recta diagonal.

# 5. Indique el cuál es el valor del residual estandarizado de la Mastercraft X-1, para el literal 3
rst = rstandard(reg2)
# R: 0.38705854 

# 6. Si se desea conocer cuál es la velocidad de una lancha tomando en cuenta su potencia. 
# Indique el vector de los valores influyentes y en qué gráfica podría identificar la existencia de un valor influyente.
reg3 = lm (velocidad~hp)
treshold = 3*(1+1)/11 # R: 0.5454545
hi = influence(reg3)$hat # R:VECTOR DE VALORES INFLUYENTES
# R: En la grafica Residuals vs Fitted podemos identificar graficamente si existen valores atipicos o influyentes. Pero 
# no podemos llegar a dicha conclusion sin antes difinir si se trata de un valor atipico o un valor influyente


