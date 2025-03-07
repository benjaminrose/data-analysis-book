# Dimensionality Reduction (PCA)

## Principal component analysis (PCA)

(Monday)

The theory of PCA just the theory of rotation in linear algebra. When I understood PCA, I finally understood Quantum Mechanics.

![Principle Components from https://www.geeksforgeeks.org/principal-component-analysis-pca/](img/Principal-Componenent-Analysisi.webp)

### Cover Robinson 4.6.

Covariance & PCA

### Method:

1. Standardize data
1. Find correlations
1. Find principal components
1. Transform Data

### Advantages and Disadvantages of Principal Component Analysis

(from https://www.geeksforgeeks.org/principal-component-analysis-pca/)

Advantages

* Multicollinearity Handling: Creates new, uncorrelated variables to address issues when original features are highly correlated.
* Noise Reduction: Eliminates components with low variance (assumed to be noise), enhancing data clarity.
* Data Compression: Represents data with fewer components, reducing storage needs and speeding up processing.
* Outlier Detection: Identifies unusual data points by showing which ones deviate significantly in the reduced space.
* Disadvantages of Principal Component Analysis

Disadvantages

* Interpretation Challenges: The new components are combinations of original variables, which can be hard to explain.
* Data Scaling Sensitivity: Requires proper scaling of data before application, or results may be misleading.
* Information Loss: Reducing dimensions may lose some important information if too few components are kept.
* Assumption of Linearity: Works best when relationships between variables are linear, and may struggle with non-linear data.
* Computational Complexity: Can be slow and resource-intensive on very large datasets.
* Risk of Overfitting: Using too many components or working with a small dataset might lead to models that don’t generalize well.


### Dimensional Reduction

### PCA in Python

(Wednesday)

(Example from https://www.geeksforgeeks.org/principal-component-analysis-pca/)

```python
import pandas as pd
import numpy as np

# Here we are using inbuilt dataset of scikit learn
from sklearn.datasets import load_breast_cancer

# instantiating
cancer = load_breast_cancer(as_frame=True)
# creating dataframe
df = cancer.frame

# checking shape
print('Original Dataframe shape :',df.shape)

# Input features
X = df[cancer['feature_names']]
print('Inputs Dataframe shape   :', X.shape)
```


```python
# Standardization
X_mean = X.mean()
X_std = X.std()
Z = (X - X_mean) / X_std
```


```python
# covariance
c = Z.cov()

# Plot the covariance matrix
import matplotlib.pyplot as plt
import seaborn as sns
sns.heatmap(c)
plt.show()
```


```python
eigenvalues, eigenvectors = np.linalg.eig(c)
print('Eigen values:\n', eigenvalues)
print('Eigen values Shape:', eigenvalues.shape)
print('Eigen Vector Shape:', eigenvectors.shape)
```

```python
# Index the eigenvalues in descending order 
idx = eigenvalues.argsort()[::-1]

# Sort the eigenvalues in descending order 
eigenvalues = eigenvalues[idx]

# sort the corresponding eigenvectors accordingly
eigenvectors = eigenvectors[:,idx]

explained_var = np.cumsum(eigenvalues) / np.sum(eigenvalues)
explained_var
```

```python
n_components = np.argmax(explained_var >= 0.50) + 1
n_components
```
```python
# PCA component or unit matrix
u = eigenvectors[:,:n_components]
pca_component = pd.DataFrame(u,
                             index = cancer['feature_names'],
                             columns = ['PC1','PC2']
                            )

# plotting heatmap
plt.figure(figsize =(5, 7))
sns.heatmap(pca_component)
plt.title('PCA Component')
plt.show()
```

```python
# Matrix multiplication or dot Product
Z_pca = Z @ pca_component
# Rename the columns name
Z_pca.rename({'PC1': 'PCA1', 'PC2': 'PCA2'}, axis=1, inplace=True)
# Print the  Pricipal Component values
print(Z_pca)
```

or 

```python
from sklearn.decomposition import PCA

pca = PCA(n_components=2)  # Can be any size
pca.fit(Z)  # still need to scale data.
x_pca = pca.transform(Z)

# Create the dataframe
df_pca1 = pd.DataFrame(x_pca,
                       columns=['PC{}'.
                       format(i+1)
                        for i in range(n_components)])
print(df_pca1)
```

```python
plt.figure(figsize=(8, 6))

plt.scatter(x_pca[:, 0], x_pca[:, 1],
            c=cancer['target'],
            cmap='plasma')

plt.xlabel('First Principal Component')
plt.ylabel('Second Principal Component')
plt.show()
```

### PCA in R

Not this year.


## Alternatives to PCA

(Friday)

PCA benefits and draw backs: 

**Pros:**
1. Dimensionality Reduction: PCA effectively reduces the number of features, which is beneficial for models that suffer from the curse of dimensionality.
2. Feature Independence: Principal components are orthogonal (uncorrelated), meaning they capture independent information, simplifying the interpretation of the reduced features.
3. Noise Reduction: PCA can help reduce noise by focusing on the components that explain the most significant variance in the data.
4. Visualization: The reduced-dimensional data can be visualized, aiding in understanding the underlying structure and patterns.

**Cons:**
1. Loss of Interpretability: Interpretability of the original features may be lost in the transformed space, as principal components are linear combinations of the original features.
2. Assumption of Linearity: PCA assumes that the relationships between variables are linear, which may not be true in all cases.
3. Sensitive to Scaling: PCA is sensitive to the scale of the features, so standardization is often required.
4. Outliers Impact Results: Outliers can significantly impact the results of PCA, as it focuses on capturing the maximum variance, which may be influenced by extreme values.


When to Use:
1. High-Dimensional Data:
PCA is particularly useful when dealing with datasets with a large number of features to mitigate the curse of dimensionality.
2. Collinear Features:
When features are highly correlated, PCA can be effective in capturing the shared information and representing it with fewer components.
3. Visualization:
PCA is beneficial when visualizing high-dimensional data is challenging. It projects data into a lower-dimensional space that can be easily visualized.
5. Linear Relationships:
When the relationships between variables are mostly linear, PCA is a suitable technique.

* https://elitedatascience.com/dimensionality-reduction-algorithms
https://medium.com/nerd-for-tech/dimensionality-reduction-techniques-pca-lca-and-svd-f2a56b097f7c
* https://medium.com/nerd-for-tech/dimensionality-reduction-techniques-pca-lca-and-svd-f2a56b097f7c

```{note}
For science the two main issues of PCA are the lack of propagating uncertainties and the inherent linear assumptions.
```

### Incorporating Uncertainties

The main issue with PCA in science is that it does not account for uncertainties in the measurements. 

* https://iopscience.iop.org/article/10.3847/1538-4357/aaec7e/pdf
    * SNEMO uses Expectation Maximization Factor Analysis (EMFA)
* https://scikit-learn.org/stable/modules/generated/sklearn.decomposition.FactorAnalysis.html



### Doing nonlinear dimensionality reduction

Also, PCA is inherently linear. With infinitely many PCA features you can shift a spectral line, or you can do a non-linear dimensionality reduction and represent a spectral line shift by a single parameter.

* https://en.wikipedia.org/wiki/Nonlinear_dimensionality_reduction
* https://scikit-learn.org/stable/modules/generated/sklearn.decomposition.KernelPCA.html#sklearn.decomposition.KernelPCA
* https://scikit-learn.org/stable/auto_examples/decomposition/plot_kernel_pca.html

## Further Reading

* Robinson 2016 section 4.6
* https://www.geeksforgeeks.org/principal-component-analysis-pca/
* https://en.wikipedia.org/wiki/Principal_component_analysis
* https://scikit-learn.org/stable/modules/generated/sklearn.decomposition.PCA.html
* https://stats.stackexchange.com/questions/346692/how-does-eigenvalues-measure-variance-along-the-principal-components-in-pca
* https://arxiv.org/pdf/2101.00734
