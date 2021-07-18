library(ggplot2)

data <- read.csv("partisanship rep.csv")

data$order = factor(data$race, levels=c("won", "left", "lost"))

ggplot(data, aes(x=x, color=race, fill=race, alpha=0.5)) +
    geom_density() +
    facet_grid(order ~ .)

ggsave("partisanship rep density.png")
