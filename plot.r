library(ggplot2)

rep <- read.csv("partisanship rep.csv")

ggplot(rep, aes(x=race, y=x, color=race)) +
    geom_violin() +
    coord_flip() +
    scale_x_discrete(limits=c("lost", "left", "won")) +
    geom_jitter()

ggsave("partisanship rep.png")

dem <- read.csv("partisanship dem.csv")

ggplot(dem, aes(x=race, y=x, color=race)) +
    geom_violin() +
    coord_flip() +
    scale_x_discrete(limits=c("lost", "left", "won")) +
    geom_jitter()

ggsave("partisanship dem.png")
