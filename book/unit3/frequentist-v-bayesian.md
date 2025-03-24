# Frequentist vs Bayesian

## Reviewing P-values

What is the p value telling you?

```{dropdown} Answer
$P(data | H_0)$ or the probability of the observed data given that null hypothesis is true.[^footnote]
```

## Bayes' theorem

In elementary probability, you can switch the order of conditional probability by a simple expression:

$P(A|B) = P(B|A) P(A) / P(B)$

Bayes thought about what this means with regards to data and measurements. So far, we have be working with $P(D|F)$. What if we want to switch that to $P(F|D)$? What does this mean, both mathematically and conceptually?

$P(F|D) = P(D|F) P(F) / P(D)$

What is the probability of the data anyway? Let's make this proportional, since most model fitting tools just need to know that maximum/minimum locations and not the actual value.

$P(F|D) \propto P(D|F) P(F)$

```{note}
Here I inject my own oppinion. For science, trust your data! You have measured it, so assume it is true. I see Bayesian statistics as a perfect match for science. There are a few odd assumptions that you must make in a Baysian framework. So let's keep ivestigating the difference between frequentist and Bayesian statistics.
```

## Detailed examples

["Frequentism and Bayesianism: A Python-driven Primer"](https://ui.adsabs.harvard.edu/abs/2014arXiv1411.5018V/abstract)

We specifically covered Nuisance Parameters and the difference between Confidence Intervals vs Credible Regions.


## Further Reading

* https://ui.adsabs.harvard.edu/abs/2014arXiv1411.5018V/abstract
* https://towardsdatascience.com/one-tailed-vs-two-tailed-tests/
* https://jakevdp.github.io/blog/2014/03/11/frequentism-and-bayesianism-a-practical-intro/


[^footnote]: We will be using new [probability notation](https://en.wikipedia.org/wiki/Notation_in_probability_and_statistics), specifically conditional probability.
