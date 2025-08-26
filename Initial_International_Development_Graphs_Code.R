# jpassets <- read.csv("/Users/siddharth/Downloads/JPNASSETS.csv")
# jpassets
# plot(jpassets)
# print(jpassets)

library(ggplot2)
jpinterbankrates <- read.csv("/Users/siddharth/Downloads/IRSTCI01JPQ156N.csv")
jpinterbankrates
ggplot(jpinterbankrates, aes(x = as.Date(observation_date),
                             y = IRSTCI01JPQ156N)) + geom_line(color = "blue") + 
  labs(title = "Immediate (Short-Term) Interest Rates for Banks in Japan 
       on the First Day of Each Month through 2024",
       x = "Date",
       y = "Interbank Rate (%)",
       caption = "Federal Reserve Bank of St. Louis FRED") + theme_minimal()

chinacpi <- read.csv("/Users/siddharth/Downloads/ChinaCPI2024_2025.csv")
chinacpi
ggplot(chinacpi, aes(x = as.Date(observation_date),
                     y = CPALTT01CNM659N)) + geom_line(color = "red") + 
  labs(title = "China CPI Monthly Growth Rate from Jan 2024 to May 2025", 
       x = "Month",
       y = "Consumer Price Index Growth Rate (%)",
       caption = "Federal Reserve Bank of St. Louis FRED") + theme_minimal()