# Homework 3

1. Use the [New York City Yellow Taxi Records data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page?ref=hackernoon.com) for January 2024. The specific file is also available at [yellow_tripdata_2024-01.parquet](./yellow_tripdata_2024-01.parquet). I recommend using the `pandas.read_parquet` function, but there are other tools to read parquet files.py. Sort by pickup time, and tell me at what lag the autocorrelations for payment type, fare amount, and total amount first become insignificant. 
1. Make a histogram of the passenger count. Find a way to accurately show the discrete nature of the variable. Additionally find a way to still show the details of the >1 passenger rides even with 75% of the rides were for one person.
1. Run a PCA analysis the fare amount, trip amount, trip distance, and pickup time. You will need to convert pickup time to a non-datetime object. 
    1. Report the principal axes and the data transformation used when computing these vectors.
    1. Make a plot showing one of the principal axes.
1. (Wall & Jenkins 5.1)
1. (Wall & Jenkins 5.2)
