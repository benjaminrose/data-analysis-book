# Goodness of Fit

Our goal in this section is to quantify how well a model fits the data. In part, the Hypothesis testing in the previous unit were goodness-of-fit tests, testing if the data matched some null hypothesis. However, let's look for a goodness of fit associated with model fitting. 

## $\chi^2$

The main tool we will use is the $\chi^2$. To start, we will essentially say the model with the highest likelihood (or lowest $\chi^2$) is the best fit.\footnote{A lot of examples for this are for rates of categorical data. This is similar, but there is no measurement uncertainty so the denominator is different.}
```{math} 
   \chi^2 = \Sigma_i (y_i - f_i)^2 / \sigma_i^2 
```
The $\chi^2$ should be approximately the number of observations.

Example ...

<!-- import numpy as np
from scipy import optimize

# Define the function to minimize
def chi_square(C1, C2):
    # Calculate the model using the input values of C1 and C2
    model = f(C1, C2, time_input)
    
    # Calculate the chi-squared value
    chi_square = np.sum(((y - model)/yerr)**2)
    
    # Return the chi-squared value
    return chi_square

# Set the initial guess values for C1 and C2
x0 = [0.002, 0.003]

# Use the fmin function to find the minimum of the chi-square function
result = optimize.minimize(chi_square, x0=x0)

# The result will be an array containing the values of C1 and C2 that minimize the chi-square function
print(result) -->




What if we want to compare across data sets and the data sets are different sizes? We can use the reduced $\chi^2$
```{math}
    \chi^2/N_{\mathrm{dof}}
```

For this, $N_{\mathrm{dof}}$ is the number of observations minus the number of parameters of the models. Essentially, you are dividing by the number of observations, for large data sets and simple models. The reduced $\chi^2$ should be approximately one.


## Alternatives

The "coefficient of determination", $R^2$, is another common statistic used. It is defined as 
```{math} 
   R^2 = 1 - \Sigma_i (y_i - f_i)^2 / (y_i - y_{\mathrm{mean}})^2 
```

```{note}
But, what happens if the models have a different number of parameters. A quadratic fit will always be perfect for three observations (three observations and three unknowns). This is when you use something like AIC or BIC.
```

## Further Reading
