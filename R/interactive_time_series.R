library(plotly)
library(zoo)
library(htmlwidgets)

source("R/time_series_utils.R")

lst <- create_time_series()
inflation.ts <- lst[[1]]
unemployed.ts <- lst[[2]]
fedfunds.ts <- lst[[3]]

df <- data.frame(Quarter=as.yearqtr(time(inflation.ts)),
                 Inflation=inflation.ts,
                 Unemployment=unemployed.ts,
                 Fed_funds=fedfunds.ts)

hovertime <- as.character(df$Quarter)

p <- plot_ly(x = df$Quarter, alpha=0.65, hoverinfo = "text") %>%
  add_lines(y = df$Inflation, color=I("blue"), name = "Inflation",
            text = paste0("Inflation", "\n", hovertime, ": ", df$Inflation)) %>%
  add_lines(y = df$Unemployment, color=I("red"), name = "Unemployment Rate",
            text = paste0("Unemployment", "\n", hovertime, ": ", df$Unemployment)) %>%
  add_lines(y = df$Fed_funds, color=I("darkgreen"), name = "Effective Federal Funds Rate",
            text = paste0("Fed funds", "\n", hovertime, ": ", df$Fed_funds)) %>%
  rangeslider() %>%
  layout(title = "Interactive Time Series Plot", yaxis=list(title = "Percent"))

saveWidget(p, "index.html")
