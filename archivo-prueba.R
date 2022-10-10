library(readr)
library(dplyr)
library(ggplot2)
library(showtext)
library(ggthemes)

games <- read_csv("base-juegos/games-data.csv")

games|>
  filter(score >=90, platform == "PC" )|>
  ggplot(aes(x = `r-date`, y=`user score`)) +
  geom_line() +
  geom_point() 

  