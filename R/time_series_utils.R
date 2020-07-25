create_time_series <- function() {
  inflation <-read.csv("data/Inflation_1959_Q4-2015_Q4.csv")
  unemployed <- read.csv("data/Unemployment_1960_Q1-2015_Q4.csv")
  fedfunds <- read.csv("data/Federal_Funds_Rate_1959_12-2015_11.csv")

  inflation <- subset(inflation, select=c("QUARTER", "INFLATION"))
  inflation <- inflation[2:(nrow(inflation) - 1),]
  unemployed <- unemployed[1:(nrow(unemployed) - 1),]
  fedfunds <- fedfunds[2:670,]

  inflation.ts <- ts(inflation$INFLATION, start=c(1960,1), frequency=4)
  unemployed.ts <- ts(unemployed$LRUN64TTUSQ156N, start=c(1960,1), frequency=4)
  fedfunds.ts <- aggregate(ts(fedfunds$FEDFUNDS, start=c(1960,1), frequency=12), FUN=mean, nfrequency=4)

  return(list(inflation.ts, unemployed.ts, fedfunds.ts))
}
