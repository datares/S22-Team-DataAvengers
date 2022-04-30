#data compiled using excel for ratios of first to initial release of a movie
marvel_ds <- read.csv("marvel_clean.csv")
colnames(marvel_ds) <- c("Title","Percentage")
library(ggplot2)
match <- c("increase","increase","increase","increase","decrease","increase","increase","increase","decrease","increase","increase")
marvel_ds <- cbind(marvel_ds, "increase or decrease" = match)

ggplot(marvel_ds, aes(x= Title, y = Percentage, fill = `increase or decrease`)) + 
  geom_bar(stat = "identity")