# Pearson r & Spearman $\rho$

## Pearson correlation coefficient

```python
import numpy as np
from scipy import stats
x, y = [1, 2, 3, 4, 5, 6, 7], [10, 9, 2.5, 6, 4, 3, 2]
res = stats.pearsonr(x, y)
res
```

Check out the object res. Use dir(res) and help to figure it out.

```{index} p-value
```
### p-values

A lot of statistics uses [p-values](https://en.wikipedia.org/wiki/P-value) rather than $\sigma$ when measuring significance. A p-value is the probability that the observation came from the null hypothesis (for Pearson this is no correlation). A very small p-value means that such an extreme observed outcome would be very unlikely under the null hypothesis. 

P-values can be converted to $\sigma$ by using the area under a Gaussian curve. For the basics 1-, 2-, and 3-$\sigma$ you can use the [68–95–99.7 rule](https://en.wikipedia.org/wiki/68–95–99.7_rule). But pay attention if you want to account for the area in one of non-of the tails (are you testing for a positive correlation or just a non-zero correlation). Assuming you are testing for a non-zero correlation (two tail area of interest) the 2-, and 3-$\sigma$ p-values are 0.05 and 0.003.



```{index} scipy.stats
```
```{index} Pearson correlation
```
### More `pearsonr` examples

For smaller samples, the perturbation test can lead to a more accurate estimate of the p-value 
```python
rng = np.random.default_rng()
method = stats.PermutationMethod(n_resamples=np.inf, random_state=rng)
stats.pearsonr(x, y, method=method)
```


To perform the test under the null hypothesis that the data were drawn from uniform distributions:

```python
rng = np.random.default_rng()
method = stats.MonteCarloMethod(rvs=(rng.uniform, rng.uniform))
stats.pearsonr(x, y, method=method)
```

N-dimensional arrays

```python
rng = np.random.default_rng()
x = rng.standard_normal((8, 15))
y = rng.standard_normal((8, 15))
stats.pearsonr(x, y, axis=0).statistic.shape  # between corresponding columns
stats.pearsonr(x, y, axis=1).statistic.shape  # between corresponding rows
```

SciPy allows for the creating of these confidence interval. Here is an asymptotic 90% confidence interval.
```python
x, y = [1, 2, 3, 4, 5, 6, 7], [10, 9, 2.5, 6, 4, 3, 2]
res = stats.pearsonr(x, y)
res.confidence_interval(confidence_level=0.9)
```

Can even build this interval via bootstrap—to be defined lated in the class.



```{index} scipy.stats
```
```{index} Spearman rank correlation
```
## Spearman's rank correlation coefficient

```python
import numpy as np
from scipy import stats
res = stats.spearmanr([1, 2, 3, 4, 5], [5, 6, 7, 8, 7])
res.statistic
res.pvalue
```

About what sigma is this p-value?


```python
rng = np.random.default_rng()
x2n = rng.standard_normal((100, 2))
y2n = rng.standard_normal((100, 2))
res = stats.spearmanr(x2n)
res.statistic, res.pvalue
```


```python
res = stats.spearmanr(x2n, y2n)
res.statistic
res.pvalue
```

What is going on in this last example?

## Suggested Reading

* https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.pearsonr.html
* https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.spearmanr.html#scipy.stats.spearmanr
https://en.wikipedia.org/wiki/P-value
