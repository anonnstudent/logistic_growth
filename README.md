# Logistic growth


## Question 1 - analysis write up

This repository is an analysis of *Escherichia coli* growth data. It
consists of observations on the number of cells present each hour during
its culturing. During the experiment, the population of *E. coli*
initially grows exponentially but then this growth slows and reaches an
equilibrium where the population size remains constant. When this data
is plotted it produces a logistic growth curve, which is sigmoidal in
shape. The observed constant population size is the maximum *E. coli*
population size that can be sustained with the resources present in the
culturing environment, this is known as the carrying capacity.


From this analysis of this data, parameters of the population are
estimated, including the initial population size of the bacteria (
*N0* ), rate of growth ( *r* ) and carrying capacity ( *K* ). These
parameters can be used in the following equation to find the population
size of E. coli within this environment at a given time ( *t* ). This
equation is the solution to a differential equation that describes
logistic growth.

*N(t) = ( K N0 e^rt ) / ( K - N0 + N0 e^rt )*


As plotting this *E. coli* growth data produces a sigmoidal curve, it is
harder to obtain the parameters of the population as more complex
analysis is required. However, producing a semi-log plot by
log-transforming the y-axis (the number of cells observed) to, the data
can be observed in linear relationships instead. Here, the early time
points where there is exponential growth show a positive linear
relationship and later time points with no population growth still show
this constant population size. By applying linear models to the linear
relationships of this log-transformed data, estimates for the population
parameters mentioned above can be obtained.


To estimate values of *N0* and *r*, a linear model can be applied to
the early time points where this positive linear relationship is
present. The linear approximation of the observed logistic growth that
is applied to this linear model is shown below:

*ln(N) = ln(N0) + rt*

Due to this approximation, *N0* can be estimated as the y-intercept of
the linear model, while *r* can be estimated from the slope of the line.


To estimate values of *K*, a separate linear model can be applied to the
later time points where this constant population size is present. The
linear approximation of the observed logistic growth that is applied to
this linear model is shown below:

*N(t) = K + 0 · t*

Due to this approximation, *K* can be estimated as the y-intercept of this
linear model.



### Results

The data analysed is taken from the dataset **"experiment1.csv"**. To
apply the linear models to the data, it first had to be subsetted into
the appropriate time points showing exponential and constant growth
within the logistic growth curve. The code to do this subsetting and apply the linear models is shown below:


**Exponential growth**

-   data_subset1 \<- growth_data %\>%filter(t\<1600) %\>% mutate(N_log = log(N))

-   model1 \<- lm(N_log \~ t, data_subset1)


**Constant growth**

-   data_subset2 \<- growth_data %\>% filter(t\>2500)

-   model2 \<- lm(N \~ 1, data_subset2)


The estimates obtained from this analysis are as follows:

**N0** = 995.256

**r** = 9.990e-03

**K** = 6.00e+10

The value for N0 had to be obtained by using the function "exp()" on
the y-intercept from model1, as it log transformed: ***ln*(N0)** =
6.903e+00



## Question 2 - calculating exponential growth and comparison to logistic growth


**Exponential growth**

Calculations to find the number of cells present at ***t** = 4980*
(the last time point in the experiment) assuming exponential growth is
taking place:

*N(t) = N0 \* e^rt*

*N(4980)* = 995.256 \* e^(9.990e-03 \* 4980) = 4.019501e+24

*N(4980)* = 4.019501e+24


**Logistic growth**

The number of cells at ***t** = 4980* assuming logistic growth can be
taken from the data itself, as logistic growth is present:

*N(4980)* = 59999999983 (or **K** = 6.00e+10)

Or can be calculated using the solution logistic growth equation:

*N(t) = ( K N0 e^rt ) / ( K - N0 + N~0~ e^rt )*

*N(4980)* = (6.00e+10 \* 995.256 \* e^(9.990e-03 \* 4980)) /
(6.00e+10 - 995.256 + ( 995.256\* e^(9.990e-03 \* 4980))) = 6e+10

*N(4980)* = 6e+10


The number of cells present at ***t** = 4980* assuming exponential
growth (*N(4980)* = 4.019501e+24), is much greater than than the
number observed under logistic growth (*N(4980)* = 6e+10). This is
because assuming exponential growth for this long period of time under
the conditions in which *E. coli* were cultured is not realistic. This
exponential growth does not take density dependence into account, as by
this time point (in the experiment) the carrying capacity of the
culturing environment had been reached, as a resource had become
limiting and so prevented the further growth of the population. However,
it is possible to achieve exponential growth for this longer period of
time in different culturing environment, where there is a greater excess
of resources meaning they become limiting at a later time point.


## Question 3 - graph comparing exponential and logistic growth curves
