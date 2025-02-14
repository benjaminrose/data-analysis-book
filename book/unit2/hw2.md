# Homework 2

1. Using the "iris.data" file again, 
    1. find correlation between the four continuous variables with the highest Spearman correlation. 
    1. Plot this correlation and include the significance of this correlation.
    1. What is the least significant correlation? And would this correlation meet a 3-sigma detection threshold?
1. Fisher Forecasting
    1. Write the Fisher matrix for fitting a line to one data point and attempt to invert it to obtain the covariance matrix. What happens and why? Explain why infinite covariance does not necessarily imply zero information. 
    1. If we now take a second data point at the same value of x, compare what happens to the information and the covariance.
    1. Imagine you have prior information about the intercept from some other experiment or from theory. Add this information to the Fisher matrix and show that the covariance matrix no longer blows up. Interpret this result.
1. A typical galaxy model says that the intensity as a function of radius is $I(r) = I_0 \exp(\frac{−r}{r_0})$. 
    1. At each value of $r$ there is some uncertainty in your measurement of $I$; let us call this $\sigma_I$. Find the covariance matrix if you measure $I$ at three values of $r$: $0$, $r_0$, and $2r_0$ (you may want to write a script to do this). 
    1. In real images there is always background light so you fit a model $I(r) = I_0 \exp(\frac{−r}{r_0}) + b$ where $b$ is a uniform background. Find the covariance matrix for estimating all three parameters from the data.
    1. For physical reasons, the amount of background light cannot be arbitrarily large, nor can it be less than zero. Put some prior on band see how that aﬀects your constraint on $I_0$ and $r_0$. Note that assigning this prior is a bit of an art and is quite distinct from assigning $\sigma_I$, which should be known rigorously based on the properties of your camera.
