# Logistic growth

### Assignment
**Question 1** - Annotate the README.md file in your logistic growth repo with more detailed information about the analysis. Add a section on the results and include the estimates for N0, r and K (mention which *.csv file you used).
**Question 2** - Use your estimates of N0 and r to calculate the population size at t = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth?
**Question 3** - Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the README.md file so it can be viewed in the repo homepage.


## Analysis 
This repository is an analysis of  *Escherichia coli* growth data, which consists of observations of the number of cells present each hour during its culturing period. During the experiment, the population of *E.coli* initially grows exponentially but then this growth slows and reaches an equilibrium, known as the carrying capacity. 

- explain what carrying capacity is, what causes it  

From this analysis of this data, the initial population size of the bacteria (*N[0]*), rate of growth (*r*) and carrying capacity (*K*) can be estimated which can be used (WITHIN THE BELOW EQUATION) to find the population size at a given time (*t*).

- include logistic growth equation

This is the solution of Lotka-Voltera model/logistic growth - FACT CHECK and EXPLAIN what this means and how relates. 

The growth of *E.coli* when plotted produces a sigmoidal curve showing this exponential growth which eventually decreases and levels off to a constant population size. By log-transforming the data of the number of cells observed (y-axis) to produce a semi-log plot, this growth can be observed in linear relationships instead. Here, the early time points where there is exponential growth show a positive linear relationship and later time points where there is no population growth show this constant population size. By applying linear models to these observed relationships within this semi-log plot, estimates for the population parameters mentioned above can be obtained. 

To estimate values of *N[0]* and *r*, a linear model can be applied to the early time points where this positive linear relationship is present. The linear approximation of the observed logistic growth to this model to estimate these parameters is below:

*ln(N) = ln(N0) + rt*

- explain this

To estimate values of *K*, a linear model can be applied to the later time points where this constant population size is present. The linear approximation of the observed logistic growth applied to the model to estimate this parameter is below:

*N(t) = K + 0 · t*

- explain this



### Results

The data analysed is taken from the dataset **experiment1.csv**. To apply these linear models, this data first had to be subsetted into time points showing exponential and constant growth in the sigmoidal curve. The code to do this and fit the models is shown below:

**Positive linear relationship**
data_subset1 <- growth_data %>% filter(t<1600) %>% mutate(N_log = log(N))
model1 <- lm(N_log ~ t, data_subset1)

**Constant growth**
data_subset2 <- growth_data %>% filter(t>2500)
model2 <- lm(N ~ 1, data_subset2)


The results obtained from this analysis are as follows:

N[0] <- 995.256
r <- 9.990e-03
K <- 6.00e+10

- exaplain how these are obtained from output
- include lnN0
- ????


## Question 2 from assignment 

**Exponential growth**

*N(t) = N[0]e^rt*

*N(4980)* = 995.256 * e^(9.990e-03*4980) = 4.019501e+24

*N(4980)* = 4.019501e+24

**Logistic growth**

- put equation here

*N(4980)* = (6.00e+10 * 995.256 * exp(9.990e-03*4980)) / 
            (6.00e+10 - 995.256 + (995.256 * exp(9.990e-03*4980))) = 6e+10

*N(4980)* = 6e+10


- exponential much higher than logistic
- exponential not realistic, no density dependence in regards to resource use and carrying capacity. 


## Question 3 from assignment 

look at code 




