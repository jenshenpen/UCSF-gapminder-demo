# Learning gapminder on R
# Jen Shen
# 2017-03-06

gapM <- read.csv(file = "output/combined_gapMinder.tsv") 

# want to separate the values
# google "R how to read .tsv"

gapM <- read.table(file = "output/combined_gapMinder.tsv", sep = '\t', header = TRUE)
# header = TRUE reads the first lines as titles
# 1698 observations

gapM$year
str(gapM$year) # shows you that it starts with 1997
              # str stands for structure

str(gapM)
plot(gapM) # taking data frame, takes everything and put it together
          # good for exploration

plot(gapM$pop,gapM$lifeExp) # basic graph

plot(gapM$pop, gapM$lifeExp, main = "Gap Minder", xlab = "Population", ylab = "Life Exp")

# First subset the data
# Take gapM$pop >= 10000
# Plot subsetted data





