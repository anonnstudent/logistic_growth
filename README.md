# Logistic growth

### Assignment
**Question 1** - Annotate the README.md file in your logistic growth repo with more detailed information about the analysis. Add a section on the results and include the estimates for N0, r and K (mention which *.csv file you used).
**Question 2** - Use your estimates of N0 and r to calculate the population size at t = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth?
**Question 3** - Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the README.md file so it can be viewed in the repo homepage.


## Analysis 
This ___ is an analysis of data of the number of *Escherichia coli* present within a culture each hour during its growth. During the experiment, the population of *E.coli* grows exponentially but then this slows and reaches an equilibrium (carrying capacity). From this analysis of this data, the initial population size of the bacteria (*N[0]*). rate of growth (*r*) and carrying capacity (*K*) can be estimated which can be used (WITHIN THE BELOW EQUATION) to find the population size at a given time (*t*).


To estimate *N[0]* and *r* the linear approximation below can be used:

(when K is greater than N[0] and t is small then the population will grow exponentially)


- this sigmodal curve from growth can be linearised by log transforming number of cells (y-axis) - gives linear relationship at early time points in experiment and the a constant at later time points.
- Using this can find these parameters from the data

- fitting a linear model to the early time points can find N0 and r
- fitting a linear model to the later time points to find t 


### Results

Using data from experiment1.csv, the results from the analysis above are as follows:

N[0] <- 995.256
r <- 9.990e-03
K <- 5.998e+10


## Question 2 from assignment 

*N(t) = N[0]e^rt*

995.256 * e^(9.990e-03*4980) = 

*ln(N) = ln(N[0]) + rt*

ln(N[0[) = 6.903e+00
6.903e+00 + (9.990e-03 * 4980)

I actually do not understand this question. 


## Question 3 from assignment 

I also dont understand this question 




