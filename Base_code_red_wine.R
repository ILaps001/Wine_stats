my_data <- read.csv("winequality-red.csv", header = TRUE) 
                    # header=TRUE assumes the first row contains column names
names(my_data)
summary(my_data)
boxplot(my_data)
plot(my_data)
plot(my_data$quality)
l1=aov(quality ~ . ,data=my_data)
summary(l1)
###normality
shapiro.test(residuals(l1))
plot(l1, which = 2)
###variance
library(car)
leveneTest(quality ~ ., data = my_data)
plot(fit, which = 1)
#Error in leveneTest.formula(quality ~ ., data = my_data) : 
#Levene's test is not appropriate with quantitative explanatory variables.
