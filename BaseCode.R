my_data <- read.csv("FINAL_DATA_CLEAN copy.csv", header = TRUE) # header=TRUE assumes the first row contains column names

null_model = lm(Total.Federal.Graduation.Rate ~ 1, data = my_data)
# Full model with all predictors
full_model = lm(Total.Federal.Graduation.Rate ~ ., data = my_data)

step_aic =step(null_model,
               scope = list(lower = ~1, upper = formula(full_model)),
               direction = "both",
               trace = FALSE)
summary(step_aic)
plot(step_aic)

install.packages("car")
library(car)
vif(step_aic)
#   TOTAL.COUNT  46.615847 





null_model = lm(Total.Federal.Graduation.Rate ~ 1, data = df_scaled)
# Full model with all predictors
full_model = lm(Total.Federal.Graduation.Rate ~ ., data = df_scaled)

step_aic =step(null_model,
               scope = list(lower = ~1, upper = formula(full_model)),
               direction = "both",
               trace = FALSE)
summary(step_aic)
plot(step_aic)
vif(step_aic)
cor(df_scaled)
heatmap(cor(df_scaled[sapply(df_scaled, is.numeric)]))

