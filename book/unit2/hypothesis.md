# Hypothesis Testing

Hypothesis testing is essentially asking "Is A consistent with B?" This can be reframed to ask if the distributions, means, medians, standard deviations are the same or not.

## Methodology

Classical hypotheses testing (developed by Neyman and Pearson) follows the following steps:
1. Set up two possible but exclusive hypothesis
    1. $H_0$, the null hypothesis is the the hypothesis of no effect. You are usually looking to reject this hypothesis.
    1. $H_1$, an alternative or research hypothesis.
1. Specify a priori the significance level ($\alpha$) that you need to reject $H_0$.
1. Choose a test that works with what is known and unknown about the data and can distinguish between the two hypotheses. 
1. Run the test. Reject $H_0$ if the test yields a value of the statistic where the probably of occurrence (the p-value) under the null hypothesis condition is $\leq \alpha$

It is vital that the significance level is chosen before the testing is performed. These tests are very susceptible to [p hacking](https://www.statology.org/ethics-p-hacking-avoid-research/).

### one- and two-tail significances

For different cases of $H_0$ and $H_1$, you are sometimes looking for 

### Type I and Type II errors

| | $H_0$ is true | $H_1$ is true |
|--|--------------|---------------|
| p > alpha | A: Type I error | B: correct action |  
| p <= alpha | C: correct action | D: Type II error |


Sum of the columns are unity, but the sums of the rows are not constrained. 

```{note}
Notice the simularities between these errors and the traditional false possitive and false negative rates. We will look at errors of these type again when we learn about machine learning.
```

## Parametric Tests

Student's $t$ and the $F$ test are analytical tests that assume the data is drawn from a Gaussian. From this reliance on a given distribution, there is a computationally cheap way to test if the mean (Student's $t$) or variances ($F$) of two samples are the same.

## Non-parametric Tests

With computers and the reduced need for analytical solutions we shift towards non-parametric tests that allow us to test that do not depend on properties of the population(s) from which the data were drawn.


## Wilcoxon-Mann-Whitney U test

For two samples, A (with m members) and B (with n members); the null hypothesis is that A and B are from the same distribution, or have the same parent populations. While the alternative is:
1. that A is stochastically larger than B (larger mean/expected value)
1. that B is stochastically larger than A
1. That A and Be differ in some other way, perhaps in spread or skewness.


## Kolmogorov-Smirnov test

## Anderson-Darling test

## Further Reading

* Wall & Jenkins Chapter 5
* https://asaip.psu.edu/Articles/beware-the-kolmogorov-smirnov-test/
