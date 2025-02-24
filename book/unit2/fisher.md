# Fisher Forecasting


## Precision vs Accuracy

Definitions.

Examples of systematic errors (reduced accuracy):
* Using a stretched measuring tape
* A scale that is not properly zeroed
* reading an indicator line from a poor angle

Examples of random errors (reduced precision):
* Measuring timing that depends on reaction time
* Multiple people taking turns making the reading
* Rounding numbers


These types of errors affect our estimations and model fitting in different ways. For a Gaussian, systematic errors shift the mean while random errors inflate the standard deviation.

## Fisher Matrixes

Read https://wittman.physics.ucdavis.edu/Fisher-matrix-guide.pdf.

Here is an updated code block since the example in the text is for Python 2 & NumPy < 2.0. 

```python
"""fisher.py

Calculates fisher matrix and covariance for a model of a line.
"""

import numpy as np

npar = 2
xvals = (0, 1)
sigmavals = [0.1] * len(xvals)

F = np.zeros([npar, npar])

for x, sigma in zip(xvals, sigmavals):
    for i in range(npar):
        # dfdp is calculated outside program.
        if i == 0:
            dfdp_i = x
        else:
            dfdp_i = 1

        for j in range(npar):
            if j == 0:
                dfdp_j = x
            else:
                dfdp_j = 1

            F[i, j] += sigma ** (-2) * dfdp_i * dfdp_j


print(f"Observatoins at {xvals}:\n")
print("Fisher matrix:")
print(F)
print("\nCovarance (m, b):")
print(np.asmatrix(F).I)  # numpy v2 needs np.asmatrix() not np.mat()
```

## Suggested Reading 

* https://wittman.physics.ucdavis.edu/Fisher-matrix-guide.pdf
* https://arxiv.org/pdf/0906.4123
