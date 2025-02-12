# Hypothesis testing

https://en.wikipedia.org/wiki/Pearson_correlation_coefficient


https://www.geeksforgeeks.org/spearmans-rank-correlation/

https://en.wikipedia.org/wiki/Spearman%27s_rank_correlation_coefficient

(https://en.wikipedia.org/wiki/Monotonic_function)

https://ui.adsabs.harvard.edu/abs/2019ApJ...874...32R/abstract - you can't fit a line sometimes.



(Following text is from https://www.scribbr.com/statistics/pearson-correlation-coefficient/)


## When to use the Pearson correlation coefficient

The Pearson correlation coefficient (r) is one of several correlation coefficients that you need to choose between when you want to measure a correlation. The Pearson correlation coefficient is a good choice when all of the following are true:

* Both variables are quantitative: You will need to use a different method if either of the variables is qualitative.
* The variables are normally distributed: You can create a histogram of each variable to verify whether the distributions are approximately normal. It’s not a problem if the variables are a little non-normal.
    * scipy has ways to remove this assumption.
* The data have no outliers: Outliers are observations that don’t follow the same patterns as the rest of the data. A scatterplot is one way to check for outliers—look for points that are far away from the others.
* The relationship is linear: “Linear” means that the relationship between the two variables can be described reasonably well by a straight line. You can use a scatterplot to check whether the relationship between two variables is linear.


## Spearson vs. Spearman’s rank correlation coefficients

Spearman’s rank correlation coefficient is another widely used correlation coefficient. It’s a better choice than the Pearson correlation coefficient when one or more of the following is true:

* The variables are ordinal.
* The variables aren’t normally distributed.
* The data includes outliers.
* The relationship between the variables is non-linear and monotonic.
