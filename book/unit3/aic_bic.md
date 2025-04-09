# Model Comparison

## Frequentist Statistics

Akaike information criterion (AIC) & Bayesian Information Criterion (BIC) are two ways to compare models of varying complexity. Their definitions are 
```{math}
AIC = -2 * ln(L) + 2 * k\\
BIC = -2 * ln(L) + k * ln(n)
```
Where $L$ is the maximized {term}likelihood, $k$ is the number of parameters in the model, and $n$ is the sample size. BIC prefers simpler models, especially for large data sets (where $ln(n) > 2$) since it has a $ln(n)$ cost to more complicated models.

The "best" model is the one with the lowest AIC/BIC (improved fit that is more than the added cost from the model complexity). But sometimes the AIC and BIC disagree on the "best" model. At this point, you will need to use some logic and try to understand the models.

### {term}`statmodles` example

```python
import numpy as np
from statsmodels.formula.api import wls
import pandas as pd
import matplotlib.pyplot as plt

np.random.seed(1024)

def model(beta, x):
    return beta[0] + beta[1] * x + beta[2] * (x -5)**2

nsample = 50
beta = [5.0, 0.5, -0.04]
sig_base = 0.5
relative_weights = np.ones(nsample)
relative_weights[nsample * 6 // 10 :] = 3
x = np.linspace(0, 20, nsample)

y_true = model(beta, x)

err = sig_base * relative_weights * np.random.normal(size=nsample)
y = y_true + err

data = pd.DataFrame(
    {
        "y": y,
        "x": x,
    }
)

fig, ax = plt.subplots(figsize=(8, 6))
ax.errorbar(x, y, yerr=sig_base * relative_weights, fmt="o", label="Data")
plt.show()

# Note we are using wls not WLS. This gives us access to formula
linear_wls = wls(formula="y ~ 1 + x", data=data, weights=1.0 / ((sig_base * relative_weights) ** 2))
linear_res = linear_wls.fit()

quad_wls = wls(formula="y ~ 1 + x + I(x**2)", data=data, weights=1.0 / ((sig_base * relative_weights) ** 2))
quad_res = quad_wls.fit()

qubic_wls = wls(formula="y ~ 1 + x + I(x**2) + I(x**3)", data=data, weights=1.0 / ((sig_base * relative_weights) ** 2))
qubic_res = qubic_wls.fit()

print(linear_res.summary())
print(quad_res.summary())
print(qubic_res.summary())
```

## Bayesian Statistics




## Further Reading
* (The introduction of BIC) https://sites.stat.washington.edu/courses/stat527/s13/readings/ann_stat1978.pdf
* https://www.statsmodels.org/stable/examples/notebooks/generated/wls.html
* https://www.statsmodels.org/stable/examples/notebooks/generated/ordinal_regression.html#Using-formulas---treatment-of-endog
