#install.packages('ggplot2')
#install.packages('ggplot2movies')
library(ggplot2)
library(ggplot2movies)

# DATA & AESTHETICS
pl <- ggplot(movies,aes(x = rating))

# Geometry
pl2 <- pl + geom_histogram(binwidth = 0.1, aes(fill=after_stat(count)))

pl3 <- pl2 + xlab('Movie Rating') + ylab('Count')

print(pl3)
