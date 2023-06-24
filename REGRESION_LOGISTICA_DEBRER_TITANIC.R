library(readr)
titanic <- read_csv("C:/Users/Usuario/Downloads/train_titanic.csv")
titanic <- na.omit(titanic)
View(titanic)
# UJESTES DEL DATASET 
titanic[,5] = (titanic$Sex=="female")*1; # masculino = 1 | femenino = 0
# TRAINIG 
train = titanic[1:128,1:8]
# Renombrar
# VARIABLES INDEPENDIENTES
x1 = train$PassengerId
x2 = train$Pclass
x3 = train$Sex
x4 = train$Age
x5 = train$SibSp
x6 = train$Parch
# VAIABLE DEPENDIENTE | VARIABLE QUE SE BUSCA PREDECIR
y = train$Survived
# REGRESION LOGISTICA
reglog = glm(y~x1+x2+x3+x4+x5+x6,family = binomial())
# COEFICIENTES DE REGRECION 
b0 = reglog$coefficients[1]
b1 = reglog$coefficients[2]
b2 = reglog$coefficients[3]
b3 = reglog$coefficients[4]
b4 = reglog$coefficients[5]
b5 = reglog$coefficients[6]
b6 = reglog$coefficients[7]
# TEST
test = titanic[129:183,1:8]
x11 = test$PassengerId 
x22 = test$Pclass
x33 = test$Sex
x44 = test$Age
x55 = test$SibSp
x66 = test$Parch
y1 = test$Survived
# ECUACION DE ESTIMACION DE LA REGREION LOGISTICA
yest = exp(b0+b1*x11+b2*x22+b3*x33+b4*x44+b5*x55+b6*x66)/(1+exp(b0+b1*x11+b2*x22+b3*x33+b4*x44+b5*x55+b6*x66))
# THRESHOLD
range(yest)
# REDONDEO 
yest1 = round(yest)
# ERROR 
error = (yest1 == y1)*1
# Exactitud
accuracy = sum(error)/length(y1)  

