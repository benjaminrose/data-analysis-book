# R

R is a common programing language for data analysis. About half of the books and example online will be in R, with the other half being in Python. It is wroth while learning the basics, so you can read these examples. Additionally, you may find that R, and the editor R-studio, works the way you think and you choose to continue this course using them.

R is not my strength, so here is an introduction video for you to watch.

<iframe width="560" height="315" src="https://www.youtube.com/embed/yZ0bV2Afkjc?si=5KCWXUNp-NWF7EZz" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

This video does not talk about how to install anything. You can get rStudio at https://posit.co/download/rstudio-desktop/. They also versions of r. On my Mac I used homebrew: `brew install r`. Also, tidydata's installation is being strange. Instead directly install all the packages:
```r
install.packages(c('readr', 'ggplot2', 'tidyr', 'dplyr', 'tidyr', 'purrr', 'stringr', 'forcats'))
```
Note that dplyr overwrites the built-in `filter` function. The video is using dplyr's version of filter.

You can just watch the Scooby part. We don't need to practice downloading data sets yet. Finally, `data()` does not work the same as in the video. Instead, use `data(package = .packages(all.available = TRUE))`.


## Suggested Reading

* Haely, "Data Visualization: A Practical Introduction" (Chapter 2)
