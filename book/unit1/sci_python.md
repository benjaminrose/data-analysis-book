# Scientific Python

Python has two large communities: web development and scientific computing. Each group has a few core packages that they add on top of base python. In this section, we will 

## NumPy

The first package we will add to python is [NumPy](https://numpy.org/doc/stable/). To [install `numpy`](https://numpy.org/install/), type `conda install numpy` or `pip install numpy` depending on what package manager you are using. 

I then recommend reading the NumPy beginners guide at https://numpy.org/doc/stable/user/absolute_beginners.html. I will only be able to summarize it here. 

### Importing NumPy

```python
import numpy as np
```

We use the python keyword `import` to bring `numpy` into our namespace. However, we rename it to `np` because we are lazy. Using `np` is a convention.

### What is NumPy?

### Array basics

```python
a = np.array([1,  2,  3,  4,  5,  6,  7,  8,  9, 10])
```


#### Slicing

```python
data = np.array([1, 2, 3])
data[1]
data[0:2]
data[1:]
data[-2:]
```

![NumPy Indexing](img/np_indexing.png)

```{important}
Do not use `np.append()` if possible. NumPy arrays are similar to C-arrays, so all objects are next to eachother in memory. Therefore, appending to a numpy array needs to copy the entire array. This is not the case for Python lists. Therefore, if you need to build up an array, do it as a list, then convert it to an array.
```

```{note}
NumPy uses both [copies and views](https://numpy.org/doc/stable/user/quickstart.html#quickstart-copies-and-views). 

```python
x = np.array([1,2,3])
z = x
print(z is a)
print(x, z)
z[1] = 5
print(z is a)
print(x, z)
```

Learn to use `copy()` when needed.
```

#### Arrays vs Lists

```python
a * 2
```

What if `a = np.array([1, 2, 3])` vs `a = [1, 2, 3]`? In NumPy this is called [broadcasting](https://numpy.org/doc/stable/user/absolute_beginners.html#broadcasting).


## scipy

## pandas

data["Species"].value_counts() 

## tidydata


## Reading in data

## Suggested Reading

* Vasiliev "Python For Data Science" chapter 3 "Python Data Science Libraries"
* Vasiliev "Python For Data Science" chapter 4 "Accessing Data From Files and APIs"
