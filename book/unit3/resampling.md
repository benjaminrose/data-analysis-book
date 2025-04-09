# Resampling 

Resampling is a way to create "new" samples from existing data. that are representative of an underlying population. The main purpose for this resamples is to evaluate the variance of an estimator. It’s used when:

* You don’t know the underlying distribution for the population and can't directly simulate "new" data,
* Traditional formulas for estimating variance are difficult or impossible to apply (like for principle component analysis),


Two popular tools are the bootstrap and jackknife. Although they have many similarities, they do have a few notable differences.

```{index} scipy.stats
```
## Bootstrap

Bootstrap uses sampling with replacement in order to estimate to distribution for the desired target variable.

The main purpose of bootstrap is to evaluate the variance of the estimator. Other applications might be:
* to estimate confidence intervals, standard errors for the estimator
* to estimate precision for an estimator θ
* to deal with non-normally distributed data
* to create sample sizes for experiments

**Pros** — excellent method to estimate distributions for statistics, giving better results than traditional normal approximation, works well with small samples

**Cons** — does not perform well if the model is not smooth, not good for dependent data, missing data, censoring or data with outliers

https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.bootstrap.html

## Jackknife

Jackknife works by sequentially deleting one observation in the data set, then recomputing the desired statistic. It was first created to look for bias in statistical measures, and later expanded to look at the variance of an estimation.

Jackknife works by sequentially deleting one observation in the data set, then recomputing the desired statistic.

**Pros** — computationally simpler than bootstrapping, more orderly as it is iterative

**Cons** — still fairly computationally intensive, does not perform well for non-smooth and nonlinear statistics, requires observations to be independent of each other — meaning that it is not suitable for time series analysis

https://docs.astropy.org/en/stable/api/astropy.stats.jackknife_stats.html

## Differences between Bootstrap and Jackknife

* Bootstrap requires a computer and is about ten times more computationally intensive. Jackknife can (at least, theoretically) be performed by hand.
* Bootstrap is conceptually simpler than Jackknife. 
* Jackknife requires N repetitions for a sample of N (for example, if you have 10,000 items then you’ll have 10,000 repetitions), while the bootstrap requires “B” repetitions. This leads to a choice of B, which isn’t always an easy task. A general rule of thumb is that B = 1,000 unless you have access to a large amount of computing power.
* In most cases (see Efron, 1982), Jackknife doesn’t perform as well Bootstrap.
* Bootstrapping introduces a “cushion error”, an extra variation source, due to the finite resampling of size B. Note that the cushion error is reduced for large B sizes or where only biased sets of bootstrap samples are used (called b-bootstrap).
* Jackknife is more conservative than bootstrapping, producing slightly larger estimated standard errors.
* Jackknife gives the same results every time, because of the small differences between replications. Bootstrap gives different results each time that it’s run.
* Jackknife tends to perform better for confidence interval estimation for pairwise agreement measures.
* Bootstrapping performs better for skewed distributions.
* Jackknife is more suitable for small original data samples.

## Further Reading

* https://www.datasciencecentral.com/resampling-methods-comparison/
* https://lymielynn.medium.com/bootstrapping-vs-jackknife-d5172965207b
* Wall & Jenkins section 6.6
* https://iopscience.iop.org/article/10.3847/1538-4357/ab0704 section 7.4, figure 12, table 10.
* https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.bootstrap.html
* https://docs.astropy.org/en/stable/api/astropy.stats.jackknife_stats.html
* Efron, B. (1982), “The Jackknife, the Bootstrap, and Other Resampling Plans,” SIAM, monograph #38, CBMS-NSF.
