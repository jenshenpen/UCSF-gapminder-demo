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

# First subset the data. gapM$pop >= 10000
  # BP: comment on your intention of what the data is going to do

gapM_large_Pop <- gapM[gapM$pop >= 100000000,]
  # BP: be consistent with formatting 
  # square brackets help with subsetting

View(gapM_large_Pop)
gapM$pop >= 100000000

# Plot subsetted data

plot(gapM_large_Pop$pop, gapM_large_Pop$lifeExp, main = "Gap Minder", xlab = "Population", ylab = "Life Exp")

# Aggregate everything

agg_gap_country <- aggregate(.~country, data=gapM, FUN = mean)
  # "." take everything, all the columns
  # "~" means "by"
  # aggregates

View(agg_gap_country)

# Aggregate population by country
agg_gap_country <- aggregate(pop~country, data=gapM, FUN = mean)

View(agg_gap_country)

agg_gap_country <- aggregate(cbind(pop, lifeExp)~country , data=gapM, FUN = mean)

  # cbind is column bind
  # rbind is row bind

  # Note: y ~ x is formula notation in R
  # lm(y~ x+r)
  # lm(y~ x*r) y predicted by x, y predicted by r, and interaction
  # lm stands for linear model
  # anova(lm(y~x)) if x is categorical

# Example of cbind
col1 <- 1:10
col2 <- 11:20
cbind(col1,col2)


