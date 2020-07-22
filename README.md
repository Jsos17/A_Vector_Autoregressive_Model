# A Vector Autoregressive Model

This repository contains the coursework for a multivariate time series analysis course. The coursework consists of building a vector autoregressive model. The coursework is published with permission from the course lecturer Leena Kalliovirta.

## Traditional Statistical Approach to Fitting a Model

The approach taken in the coursework is the traditional "old school" statistical approach i.e. the whole dataset is used to fit the VAR model. This is because in traditional time series analysis the focus is more on finding (causal) relationships between the variables and not so much on prediction.

The traditional approach is in stark contrast to the more modern machine/statistical learning approach of dividing the data into training and validation sets in order to attain better predictions. As a result of this traditional approach, the quality of the forecasts cannot really be evaluated (cannot calculate validation error, cannot do cross-validation etc.). However, applying the machine learning perspective would be relatively easy. Only a few extra steps would have to be added.

The coursework:

- [PDF report](output/VAR_Inflation_Unemployment_Federal_Funds_Rate.pdf)
- [R Markdown document](VAR_Inflation_Unemployment_Federal_Funds_Rate.Rmd)
