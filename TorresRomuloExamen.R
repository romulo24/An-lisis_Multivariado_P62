precio = c(2900,3500,2900,3500,2300,2000,3000,1300,3200,1500,2600,1600,1800,1700,1200,1600,1000,1400,1000,600)
    #             x1  x2
# Exclente         1   0
# Muy buena        1   1
# buena            0   1

x1 = c (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,0)
x2 = c (0,1,0,0,0,0,0,1,1,0,1,1,1,1,1,1,1,1,1,1)
calificacion = c(86,85,82,81,81,81,79,78,72,83,83,82,80,75,73,73,70,70,67,66)

# 1.Obtenga la ecuación de regresión estimada en la que se emplee precio y calidad para predecir la calificación final.
 reg = lm(calificacion~precio+x1+x2)
# R: Ecr = 69.884356834 + 0.001736519 *(precio) + 7.482643364*(x1) -3.722673526 (x2)
 
# 2. Grafique residuales estandarizados. Existe algún outlier? 
 rst = rstandard(reg) # Vector de residuales estandarizados 
 plot(rst)
# R: Si existe un Outlier debido a que este valor esta fuera del umbral [-2,2]
# R: -2.10084400 este es el outlier que se encuentra dentro de la grafica los residuales estandarizados
 
# 3. Indique los residuales eliminados estudentizados de estos datos. Empleando como nivel de significancia 0.05, ¿puede clasificarse cualquiera de estas observaciones como observación atípica? Explique.
 std = rstudent(reg)
 qt(0.05/2,15, lower.tail = FALSE) # [2.13145,-2.13145]
# R: Si hay un valor atipico el cual es -2.3903646 el cual supera mi threshold definido.

 
# 4. Cuáles son los valores de influencia de estos datos. ¿Parece haber alguna observación influyente en estos datos? Explique.
t = 3(p+1)/n # threshold 0.6
hi = influence(reg)$had
# Utilizando el vector de los valores influyentes tampoco podemos detectar ningun valor que suspere nuestro threshold 
# por lo cual tampoco pudimos identificar un valor influyente

# 5. Calcule la distancia de Cook de estos datos. ¿Es alguna de las observaciones una observación influyente? Explique.
cook = cooks.distance(reg)
# Threshold para considerarse un valor influyente es necesario que los valores de la distancia de cook sean superiores a 1
# R: Por lo cual en el vector de la distacia de cook no podemos identificar dichos valores superiores a 1 por lo cual no existe ningun valor influyente
  
# 6.Qué variable aporta mayor información al modelo y por qué?
# R: x1 0.025 con un valor menor al de las demas variables es aparentemente la variable que mas aporta al modelo pero haciendo 
# los test de hipotesis no podemos llegar a la conclusion de que sea significante.
# Por lo que este valor es mayor que 0.01 por lo cual rechazo la H1 y acepto la nula
  
# 7. Determine el precio estimado de una caminadora Vision Fitness T9200 que ha sido catalogada como muy buena y tiene una calificación de 78. Difiere en algo con el precio real? Si es así, explique por qué? (Indique el proceso).
  reg2 = lm (precio~x1+x2+calificacion)
# Ecr = -2502.73989  +  606.86911 *(x1)  -335.26615 *(x2) +   54.74886 *(calificacion)
  Res7 = -2502.73989  +  606.86911 *(1)  -335.26615 *(1) +   54.74886 *(78)
# Claro difiere del valor real de acuerdo a la calidad en la que se encuentre la caminadora, y el tipo de calificacion que tenga 
# es importante tener en cuenta que para obtener el precio, depende en sierta medidad de la demas variables independientes en este caso de
# la calidad y la calificacion para asi obtener un valor estimado.
  
# 8.Si se desea predecir el precio mediante la calificación general, indique los coeficientes de regresión del modelo.
  reg3 = lm (precio~calificacion)
# Ecr =  -5292.82429  +   94.67129 * (calificacion)
  
# 9.Para el literal anterior determine la bondad de ajuste del modelo, junto con el coeficiente de correlación y el p-valor de la regresión?. El modelo es significante? 
# R: la bondad de ajuste para este modelo es de 0.3859
m = cbind(precio,calificacion)
c = cor(m) 
# R:  coeficiente de correlacion 0.6466929 
# R:  Pr(>|t|) = 0.00206
# Si existe una relacion entre las variables debido a que el valor de la correlacion supera el threshold de [-0.6,0.6] lo cual me indica que si exite  una relacion significante entre las variables precio y calificacion
# De igual manera se puede constatar con el Pr(>|t|) 0.00206 < 0.01 por lo cual se rechaza la H0 y se acepta la H1 
# Por lo cual exite una relacion estadisticamente significante entre esas variables

# 10. Cuál es el precio de una caminadora catalogada como muy buena con calificación de 90?
Res10 = -2502.73989  +  606.86911 *(1)  -335.26615 *(1) +   54.74886 *(90)
# R: 2696.26$
  
  