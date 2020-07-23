# A Vector Autoregressive Model

This repository contains the coursework for a multivariate time series analysis course. The coursework consists of building a vector autoregressive (VAR) model. The coursework is published with permission from the course lecturer Leena Kalliovirta.

## The VAR Model Is Fitted Using the Approach of Traditional Statistics

In traditional time series analysis the focus is more on finding (causal) relationships between the variables and not so much on prediction. Therefore, we use the traditional statistics approach, i.e. the whole dataset is used to fit the vector autoregressive model.

The traditional approach is in stark contrast to the machine learning approach of dividing the data into training and validation sets in order to attain better predictions. As a result of this traditional approach, the quality of the forecasts cannot really be evaluated (cannot calculate validation error, cannot do cross-validation etc.). However, applying the machine learning perspective would be relatively easy. Only a few extra steps would be needed.

## The Coursework

- [PDF report](output/VAR_Inflation_Unemployment_Federal_Funds_Rate.pdf)
- [R Markdown document](VAR_Inflation_Unemployment_Federal_Funds_Rate.Rmd)
