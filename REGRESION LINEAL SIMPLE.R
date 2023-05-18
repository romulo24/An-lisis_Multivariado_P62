# REGRESION LINEAL SIMPLE 
# EST. ROMULO JESUS TORRES LLIVIPUMA 
# CIENCIAS DE LA COMPUTACION
# ---------------1.1.1 DEFINICION: 
# 1- DESCRIBIR DE MANERA CONCISA LA RELACION ENTRE LAS VARIABLES
# 2- PREDECIR LOS VALORES DE UNA VARIABLE EN FUNCION DE LA OTRA 
# D: ES UNA MEDIDA DE LA RELACION ENTRE UNA VARIABLE DEPENDIENTE(VARIABLE DE SALIDA)
# Y UNA SERIE DE VARIABLES INDEPENDIENTES(TIEMPO O COSTE)
# 3- ANALISIS DE LA REGRESION ES UN PROCESO ESTADISTICO PARAESTIMAR LA RELACION QUE EXISTE ENTRE LAS ARIABLES
# 4- REGRESION SIGNIFICA PREDECIR LA SALIDA O EL RESULTADO USANDO DATOS DE ENTRENAMIENTO
#- COMUNMENTE LAS APLICAMOS EN LOS PROCESOS INDUSTRIALES, LAS DESCISIONES SUELEN BASARSE EN LA RELACION ENTRE DOS MAS VARIABLES
# LA REGRESION LINEAL SIMPLE ESTUDIA LA RELACION ENTRE 2 VARIABLES DEFINIDO COMO EL CASO DE ESTUDIO MAS SENCILLO POSIBLE
# ---------------1.1.2 ECUACION DE LA RECTA
# EJEMPLO:
# y = mx+b
# m = pendiente 
# b = coeficiente de posicion
# 1.1.3 TIPOS DE VARIABLES 
# Y | X
# y : VARIABLE A PREDECIR|EXPLICADA|RESPUESTA| DEPENDIENTE| ENDOGENA 
# SU VARIABILIDAD ES EXPLICADA POR OTRA VARIABLE

# x: PREDICTORA|REGRESOR|EXPLICATIVA|PREDETERMINADA|INDEPENDIENTE|EXOGENA
# EXPLICA LA VARIABLE DE OTRA VARIABLE 

# ---------------1.1.3 DIAGRAMA DE DISPERSION
# PERMITE VISUALIZAR:
# RELACION ENTRE LAS VARIABLES 
# SI LA RELACION ES LINEAL O DE OTRO TIPO
# OUTLIERS VALORES QUE DISTORSIONAN LA RELACION
# LA DISPERSION DE LOS DATOS ES O NO UNIFORME (HOMOCEDASTICIDAD|HETEROCEDASTICIDAD)


# PREDICCION DE VENTAS  
#Armand’s Pizza Parlors es una cadena de restaurantes de comida italiana. Sus
#mejores ubicaciones son las que se encuentran cerca de los campus de las
#universidades. Los gerentes creen que las ventas trimestrales de estos
#restaurantes están directamente relacionadas con el tamaño de la población
#estudiantil; es decir, en los restaurantes que están cerca de campus que tienen
#una población estudiantil grande se generan más ventas que en los
#restaurantes situados cerca de campus con una población estudiantil pequeña.

# y: Ventas trimestrales de los restaurantes
# x : Tamaño de la poblaciÓn estudiantil

# RESTAURANTE CON MÁS POBLACIÓN ESTUDIANTIL | MAYOR SERA EL NÚMERO DE VENTAS

# MODELO DE REGRESION LINEAL SIMPLE 
# y = B0 + B1 X + E   
# B0 B1 Parametros del modelo 
# E = error
  
# ECUACION DE REGRESION LINEAL SIMPLE 
# E(y) = B0 + B1X
# E(y) = Media o valor esperado 
# B0 = Corte con el Eje y 
# B1 = Pendiente 

# METODOS DE LOS MINIMOS CUADRADOS 
# Uso los datos muestrales para hallar la ecuación de regresión estimada 
# MUESTRA DE 10 RESTAURANTES DE PIZZA EN TODOS LOS CAMPOS UNIVERSITARIOS 
# i = Restaurante i de la muestra.
# Xi = Tamaño de la polacion de estuadiantes en miles en el campus
# Yi = ventas trimestrales en miles de dolares 

x = c(2,6,8,8,12,16,20,20,22,26) # Variable independiente (Poblacion de los estudiantes )
y = c(58,105,88,118,117,137,157,169,149,202) # variable dependiente (Numero de ventas trimestrales)

# DIAGRAMA DE DISPERSION 
plot(x,y, xlab = 'P.Estudiantes', ylab = 'Ventas Trimesrales', col = 'red')

xest = mean(x)
yest = mean(y)

    









