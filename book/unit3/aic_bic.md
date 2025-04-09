# Model Comparison

## Frequentist Statistics

Akaike information criterion (AIC) & Bayesian Information Criterion (BIC) are two ways to compare models of varying complexity. Their definitions are 
```{math}
AIC = -2 * log(L) + 2 * k
BIC = -2 * log(L) + k * log(n)
```
Where $L$ is the maximized likelihood, $k$ is the number of parameters in the model, and $n$ is the sample size. BIC prefers simpler models, especially for large data sets (where $log(n) > 2$) since it has a $log(n)$ cost to more complicated models.

### `statmodles` example

```python
#example in class
```

## Bayesian Statistics




## Further Reading
* (The introduction of BIC) https://sites.stat.washington.edu/courses/stat527/s13/readings/ann_stat1978.pdf
