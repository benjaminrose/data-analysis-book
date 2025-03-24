# Linear Regression

The base of all model fitting is fitting a line to data. If you understand this, you can understand everything else.

For the following examples, we will use the following data:
<!-- m=3.2, b=4.5, eta=0.1 -->
```python
x = np.array([0.65, 0.60, 0.41, 0.02, 0.94, 0.67, 0.84, 0.10, 0.23, 0.59])
y = np.array([6.52, 6.54, 5.82, 4.52, 7.55, 6.54 , 7.03, 4.97, 5.22, 6.47])
```


# Linear Regression

```python
slope, intercept, r_value, p_value, std_err = stats.linregress(x,y)
```

https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.linregress.html

```python
np.polynomial.polynomial.polyfit(x, y, deg, rcond=None, full=False, w=None)
```

https://numpy.org/doc/stable/reference/generated/numpy.polynomial.polynomial.polyfit.html

```{note}
You can use the weights in `polyfit`, but you likely want to do a [$\chi^2$ annalyis](chi_square_ml_emcee). Also notice that the weights are `w[i] = 1/sigma_y[i]`.
```

## Ordinary Least Squares (OLS)

Two forms: if null hypothesis is m=1 or m=0

https://www.statsmodels.org/stable/examples/notebooks/generated/ols.html

- looks at delta-y. NOT perpendicular to slope. 
    - See example on p.137 (figure 6.2) of Wall

## Orthogonal Distance Regression (ODR)

![Description of different distances used in OLS (y-axis), and ODR (perpendicular to slope) ](https://media.geeksforgeeks.org/wp-content/uploads/20211219223720/19121.png)

https://www.geeksforgeeks.org/orthogonal-distance-regression-using-scipy/

https://docs.scipy.org/doc/scipy/reference/generated/scipy.odr.ODR.html


## Next time

We often minimize a $\chi^2$ or maximize a likelihood, how do we do this?


## Further Reading

* https://yilmazbe7.medium.com/linear-regression-with-l1-and-l2-norms-e44656df2465
* https://www.geeksforgeeks.org/orthogonal-distance-regression-using-scipy/
* https://ui.adsabs.harvard.edu/abs/2022ApJ...938..112P/abstract (Figure 5)
