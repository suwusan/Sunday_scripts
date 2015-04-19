# This is a script to explore gapminder dataset using R.
# Susan Wu
# susan.wu@utsouthwestern.edu
# 04192015

#install dplyr package and dependencies
install.packages("dplyr", dependencies = TRUE)

# Load dplyr library into working environment
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t",
                     header = TRUE)

gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min (min(pop)))

#Calculate the mean population per continent per year for years prior to 1990
gap.in %>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent, year) %>% 
  summarize(mean=mean(pop)) 

# Add iris 
data(iris)
attach(iris)
#Load tidyr
install.packages("tidyr", dependencies = TRUE)
library("tidyr")
#turn iris dataset from wide into long format
iris.long <- gather(iris, "Measurement", "Value", 1:4)

gap.in %>%
  select(country, gdpPercap, year) %>%
  


