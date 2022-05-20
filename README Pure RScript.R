# Title: "Using a data set to practice tidying data"

### The 3 rules that make a dataset tidy:
  
# 1. Each variable must have its own column.
# 2. Each observation must have its own row.
# 3. Each value must have its own cell.

# This example

# In this example, I am working with a lexicon of hashtags relating to the German election shared by a collaborator.

library(tidyverse)
library(dplyr)

### Import the data

hashtags <- read.csv(file = 'German hashtags.csv')
head(hashtags)

#Looking at the 'head' of this data set, the data set appears tidy. What can be observed, however, is a very large number of missing values. These are flagged with NA or simply appear as empty when we look at the data frame.The below code did not seem to work to fill in missing values. I will not present in the knitted document because this makes the doc really lengthy for no reason!

hashtags %>% 
fill(Date.Added)

### Dplyr
  
# However, dplyr does do the trick in this instance.

hashtagsna <- mutate_all(hashtags, list(~na_if(.,"")))

head(hashtagsna)

# Write the data frame to a CSV and add it to the location of my local github repo

# write.csv(hashtagsna,"C:\\Users\\esmer\\git_test\\Tidy\\HashtagsTidier.csv", row.names = FALSE)
