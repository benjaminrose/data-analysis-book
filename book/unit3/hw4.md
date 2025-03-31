# Homework 4

For this homework we will be using the Longley dataset. This is available via
```
from statsmodels.datasets.longley import load_pandas
data = load_pandas().data
```

1. Fit for a linear relationship between the the number of unemployed and the size of the armed forces. Explain if you should use OLS or ODR. 
1. Of the 6 continuous variables, which pair has the largest (in absolute value) slope? Plot these variables and the best fit.
1. Similar to the example in class, fit the slope to some simulated data in an unbiased way. 
    * The data has a true slope of 2.4, y-intercept of 0.1, and the uncertainties 0.1 + N(0, 0.5)but are underestimated by a fraction of 10%. 
    * Use a random seed of 12345678. 
    * Fit the slope, intercept, and the fraction of under reported error. 
    * Make a plot of the data and your best fit, include uncertainties when possible.
1. Recompute frequentist confidence intervals for the [Jaynes' Truncated Exponential](https://arxiv.org/pdf/1411.5018), but for a three new data sets. Can you find a data set where the confidence interval overlaps with the credible region presented in the text? 
