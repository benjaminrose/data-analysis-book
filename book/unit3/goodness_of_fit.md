# Goodness of Fit

Our goal in this section is to quantify how well a model fits the data. In part, the Hypothesis testing in the previous unit were goodness-of-fit tests, testing if the data matched some null hypothesis. However, let's look for a goodness of fit associated with model fitting. 

## $\chi^2$

The main tool we will use is the $\chi^2$. To start, we will essentially say the model with the highest likelihood (or lowest $\chi^2$) is the best fit.\footnote{A lot of examples for this are for rates of categorical data. This is similar, but there is no measurement uncertainty so the denominator is different.}
```{math} 
   \chi^2 = \Sigma_i (y_i - f_i)^2 / \sigma_i^2 
```
The $\chi^2$ should be approximately the number of observations.

Example ...

```python
import numpy as np
from scipy.optimize import minimize

def model1(params, obs):
    b, m = params
    return b + obs*m
    
def model2(params, obs):
    a, b = params
    return a + obs**b
    
def chi(params, x, y, yerr, model):
    return np.sum((y - model(params, x))**2/(yerr)**2)


N = 50
x = np.sort(20 * np.random.rand(N))
yerr = 0.1 + 0.5 * np.random.rand(N)

a, b = 5, 1.3
y_true = model2((a, b), x)
y = yerr * np.random.randn(N) + y_true



res1 = minimize(chi, (2,7), args=(x, y, yerr, model1))
res2 = minimize(chi, (2,7), args=(x, y, yerr, model2))
breakpoint()
```





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
