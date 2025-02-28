rooms <- c(1, 5, 2, 3, 1, NA, 3, 1, 3, 2, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA, 4, 3 ,1 ,7 ,2 ,1 ,NA ,1, 1, 3)
rooms > 2
rooms [rooms > 2]
sum(rooms>2,na.rm = T)

class(rooms)

median(rooms, na.rm = T)

install.packages("tidyverse")
library(tidyverse)

dir.create("data")
dir.create("figures")
dir.create("outputs")

download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv", 
  "data/SAFI_clean.csv", mode = "wb"
)

interviews <- read_csv("data/SAFI_clean.csv", na = "NULL") 

interviews

dim(interviews)

glimpse(interviews)

