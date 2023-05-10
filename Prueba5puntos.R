# IMPORTAR LOS DATOS DEL DATASET
library(readr)
data <- read_csv("C:/Users/Usuario/Downloads/Cancer_Data.csv")
View(data)
# 1) Determinar cuál es el número de instancias del conjunto de datos
# El dataset cuenta con 568 instancias
# 2) Determinar cuántas personas tienen tumores malignos y benignos, respectivamente
malignos = sum(data$diagnosis == "M") # Existen 212 personas con Cáncer Maligno
benignos = sum(data$diagnosis == "B") # Existen 356 personas con Cáncer Benigno
# 3)Crear un nuevo dataset que elimine la variable ID y Diagnosis. 
# Todos los literales siguientes se basan en este nuevo dataset
new = as.data.frame(data[,-(1:2)]); # Nuevo DataSet
# 4) Generar un gráfico de pares entre todas las variables
pairs(new)
# 5) Determinar el grado de correlación entre todas las variables y graficar
c = cor(new)
corrplot(c)

# 6) Calcular las medidas de tendencia central de la variable concavity_mean
# Media
media = mean(new$concavity_mean);
# Mediana
mediana = median(new$concavity_mean);
# Moda
moda = table(sort(new$concavity_mean));

# 7) Calcular las medidas de dispersión de la variable area_mean
# Rango
rango = range(new$area_mean)
# Varianza
varianza = var(new$area_mean)
# Desviacion 
desviacion = sd(new$area_mean)
