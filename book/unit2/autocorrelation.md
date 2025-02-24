# Autocorrelation

## Autocorrelation

In time series data, you can use autocorrelation (Box and Jenkins, 1976) calculations to:
* To detect non-randomness in data.
* To identify an appropriate time series model if the data are not random.


Non-randomness is common in time series data and other non-linear models. Random data is an assumption of many statistical tools. In this case, randomness is $Y_i = A_0(model) + E_i$ where $E_i$ is the error/noise term.

### Autocorrelation in Practice

Individual autocorrelation

```python
import numpy as np
import pandas as pd
rng = np.random.default_rng()

ran = rng.random(size=(50,))
time = np.sin(np.arange(50))


ran = pd.Series(ran)
time = pd.Series(time)

ran.autocorr()
time.autocorr()

ran.autocorr(lag=10)
```

From the `pd.Series.autocorr` documentation:
> This method computes the Pearson correlation between the Series and its shifted self.

The full collection of lags

```python
import numpy as np
rng = np.random.default_rng()

ran = rng.random(size=(50,))
time = np.sin(np.arange(50))

import statsmodels.api as sm
sm.tsa.acf(ran, nlags = 10)
sm.tsa.acf(time, nlags = 10)
```


### Autocorrelation of Random vs Time-Dependent Variables

```python
import numpy as np
import pandas as pd
rng = np.random.default_rng()

ran = pd.Series(rng.random(size=(50,)))
time = pd.Series(np.sin(np.arange(50)))


for i in range(len(ran)):
    print(ran.autocorr(lag=i))

for i in range(len(time)):  
    print(time.autocorr(lag=i))

```



```python
from statsmodels.graphics.tsaplots import plot_acf
import matplotlib.pyplot as plt

plot_acf(ran, lags=20)
plt.show()

plot_acf(time, lags=20)
plt.show()
```

## Suggested Reading

* https://www.itl.nist.gov/div898/handbook/eda/section3/eda35c.htm
* https://www.alpharithms.com/autocorrelation-time-series-python-432909/#google_vignette
* https://www.scicoding.com/4-ways-of-calculating-autocorrelation-in-python/#google_vignette
* https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.autocorr.html
* Box, G. E. P., and Jenkins, G. (1976), Time Series Analysis: Forecasting and Control, Holden-Day.
