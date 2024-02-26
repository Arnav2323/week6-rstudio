library(tidyverse)
library(ggplot2)
library(plotly)
library(dplyr)

US_Pop_Data <- read_csv('US_PopulationDataByState.csv')

largest_us <- head(US_Pop_Data[order(US_Pop_Data$`Resident Population 2020`, decreasing = TRUE)[-1],], 5)
 
ggplot(data = largest_us,mapping=aes(x=...1, y=`Resident Population 2020`, color=`Resident Population 2020`, size=`Resident Population 2020`)) + 
  geom_point() + 
  scale_y_continuous(labels = scales::number_format(accuracy = 1)) +
  scale_color_continuous(labels = scales::number_format(accuracy = 1)) + 
  scale_size_continuous(labels = scales::number_format(accuracy = 1)) + 
  xlab("State") + 
  ylab("Resident Population 2020")

