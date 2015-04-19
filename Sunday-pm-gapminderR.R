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

