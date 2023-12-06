#Script to plot data and model

growth_data <- read.csv("experiment1.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

exp(6.903e+00)
N0 <- 995.256 #the intercept of model1 linear model is ln(N0),this is done by exp(???)
  
r <- 9.990e-03 #this is t from the first model (model1)
  
K <- 6.00e+10 #this is the intercept of second odel

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() #+

  scale_y_continuous(trans='log10')



sessionInfo()
sink()


