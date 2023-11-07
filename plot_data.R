#Script to plot the logistic growth data

growth_data <- read.csv("experiment1.csv")

#install.packages("ggplot2")
library(ggplot2)

#plotting scatter graph of data 
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

#plotting scatter graph again but instead log transforming y axis (no of cells)
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')

sink(file = "package-versions.txt")
sessionInfo()
sink()
