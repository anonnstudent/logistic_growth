#Script to plot exponential and logistic growth

growth_data <- read.csv("experiment1.csv")

#install.packages("ggplot2")
library(ggplot2)

# Add an R script to your repository that makes a graph comparing the exponential 
  # and logistic growth curves (using the same parameter estimates you found)


#function for logistic growth
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}


# creating function for exponential growth 
exponential_fun <- function(t) {
  
  N <- (N0*exp(r*t))
  
  return(N)
  
}


# parameters estimates found previously 

N0 <- 995.256 

r <- 9.990e-03

K <- 6.00e+10



# Plotting graph - below creates a data frame from growth values obtained by running the functions above.
# This produces data points for logistic growth curve that are similar to the data in experiment1.csv.
# While also producing data points for the exponential function that are not in experiment1.csv.
# Without doing this it is difficult to plot a graph that clearly shows a comparison of both functions 



# Generate an sequence of time values that have same the same range as the data
time_values <- seq(0, 4890, by = 1) 

# Calculate corresponding growth values for both functions
logistic_growth <- logistic_fun(time_values)
exponential_growth <- exponential_fun(time_values)

# Plotting graph with ggplot
library(ggplot2)

data <- data.frame(t = time_values, N_logistic = logistic_growth, N_exponential = exponential_growth)

ggplot(data, aes(x = t)) +
  geom_line(aes(y = N_logistic, colour = "Logistic")) +
  geom_line(aes(y = N_exponential, colour = "Exponential")) +
  ylim(0, 1.0e+11) + # Adjust the y-axis limit to visualize both functions
  labs(x = "Time (min)", y = "Number of E.coli Cells", colour = "Growth Curve") +
  ggtitle("Comparison of Logistic and Exponential Growth") + 
  theme_bw()


sessionInfo()
sink()

