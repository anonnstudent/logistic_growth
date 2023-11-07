#Script to estimate the model parameters using a linear approximation

#install.packages("dplyr")
library(dplyr)

growth_data <- read.csv("experiment1.csv")

#Case 1. K >> N0, t is small

#to find where to cut t - look at log graph produced and use where straight line ends 
data_subset1 <- growth_data %>% filter(t<1600) %>% mutate(N_log = log(N))

#fit a linear model of N-log and t from the subset just created 
model1 <- lm(N_log ~ t, data_subset1)
summary(model1)


#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>2250)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)
