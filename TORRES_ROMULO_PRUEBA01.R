manga = c(98,98,98,93.5,93.5,96,90,94,96,92,91)
hp = c(400,340,400,340,320,350,310,310,350,330,330)
velocidad = c(47.5,44.9,47.3,44.5,44.5,42.5,45.8,42.8,43.2,45.3,47.7)
reg = lm(velocidad~manga)
res = summary(reg)

# 1. La velocidad de una lancha que tiene 93 pulgadas de ancho.
res = 47.0978441-0.0212272 *(93)

# 2. Bondad de ajuste del modelo generado en el literal 1.
0.00108 
# Haga un comentario sobre la bondad del ajuste.
# R: Me representa el 0.011 % de confiablidad, lo cual es una bondad de ajuste muy mala
# lo que se espera para que un modelo sea confiable es superar el 70 % de confiabilidad

# 3. De acuerdo con los datos, ¿cree usted que las lanchas más potentes, tienen mayor velocidad?. 
# R: El valor de la pendiente es positivo, por lo cual esperamos una relacion directamente proporcional
# llegando a la conclusion de que entre mayor sea la potencia del motor mayor sera la velocidad. 
# Justifique su respuesta a través de un gráfico y mediante una ecuación de regresión.
plot(hp,velocidad)
reg2 = lm(velocidad~hp)
res2 = summary(reg2)
abline(reg2)
Ecr = 35.72 + 0.027 *(hp)

# 4. Calcule la suma de cuadrados debido al error para el literal 3.
anova(reg2)
# R: SCE = 27.1249

# 5. Calcule el coeficiente de correlación muestral para el literal 1 y haga un comentario acerca del resultado.
m = cbind(hp,velocidad)
cor(m)
# R: El valor de el coeficiente de correlacion es de : 0.4575992 lo cual me indica que exite una relacion lineal positiva
# esta correlacion no supera el threshold de [-0.6,0.6] por lo cual se concluye que no exise una correlacion entre estas 
# dos variables.

# 6. ¿Indica la prueba t que haya una relación significante entre potencia y velocidad?. Use un nivel de significancia del 99% y el método del p-value.
# R: SE CONCLUYE QUE 0.15700  > 0.01 POR LO TANTO ACEPTO LA HIPOTESIS NULA (HO)Y RECHAZO LA HIPOTESIS ALTERNA (H1)
# LO  CUAL ME INDICA QUE ESTADISTICAMENTE NO EXISTE UNA RELACION SIGNIFICANTE ENTRE LA POTENCIA Y LA VELOCIDAD

# 7. Pruebe si la relación entre ancho de la lancha y velocidad es significante usando la prueba F, con un nivel de significancia del 95%. Use el método del  valor crítico. ¿Cuál es la conclusión? 
qf(0.05,1,9,lower.tail = FALSE) # F: 5.117355
# R: SE CONCLUYE QUE 5.117355 > 0.00973 POR LO TANTO ACEPTO LA HIPOTESIS NULA (HO)Y RECHAZO LA HIPOTESIS ALTERNA (H1)
# LO  CUAL ME INDICA QUE ESTADISTICAMENTE NO EXISTE UNA RELACION SIGNIFICANTE ENTRE EL ANCHO DE LA LANCHA Y LA VELOCIDAD
