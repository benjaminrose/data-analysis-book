# Homework 3

<!-- This homework should be looked at. It took longer then expected and the students were not confident in their work. -->

Use the [New York City Yellow Taxi Records data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page?ref=hackernoon.com) for January 2024. The specific file is also available at [yellow_tripdata_2024-01.parquet](./data/yellow_tripdata_2024-01.parquet). I recommend using the `pandas.read_parquet` function, but there are other tools to read parquet files. 

1. Are there any outliers you need to remove? 
1. Sort by pickup time, and tell me at what lag the autocorrelations for payment type, fare amount, and total amount first become insignificant. 
1. Make a histogram of the passenger count. Find a way to accurately show the discrete nature of the variable. Additionally find a way to still show the details of the >1 passenger rides even with 75% of the rides were for one person.
1. Run a PCA analysis the fare amount, trip amount, trip distance, and pickup time. You will need to convert pickup time to a non-datetime object. 
    1. Report the principal axes and the data transformation used when computing these vectors.
    1. Make a plot showing one of the principal axes.
1. (Wall & Jenkins 5.1) Use the data provided, two data sets, one with a total of 290 observations, the other with 386 measurements. The former is of flux densities measured at [random positions](./data/flux_densities_random.csv) in the sky; the latter of flux densities at the positions of a specified set of [galaxies](./data/flux_densities_galaxies.csv). Using the Kolmogorov-Smirnov two-sample test, examine the research hypothesis that there is excess flux density at the non-random positions. Report the significance at which you can reject the null hypothesis.
1. (Wall & Jenkins 5.2) Repeat the previous test with the Wilcoxon-Mann-Whitney statistic. Is the significance level different? Provide a reason for the change or unchange in the significance level.
