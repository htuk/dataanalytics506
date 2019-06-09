library(tidyverse)
library(dplyr)

diamonds

diamonds %>% 
  count(cut)
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
diamonds %>% 
  count(cut_width(carat, 0.5))


ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)