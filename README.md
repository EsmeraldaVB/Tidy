# Tidy
Using a data set to practice tidying data

### The 3 rules that make a dataset tidy:

1. Each variable must have its own column.
2. Each observation must have its own row.
3. Each value must have its own cell.

# This example

In this example, I am working with a lexicon of hashtags relating to the German election shared by a collaborator. 

## In R:
I import the csv of hashtags as well as other meta-data and I determine that the data set is pretty tidy. There is, however, a lot of missing data and using dplyr I explicitly add <NA> to those cells that do not have a value.
  
The code can be found in the RMarkdown file as well as the HTML version of this file, both of which have been added to this repo. I have also added a pure R script version of my code, just so that the repository recognises that there is some R in it...!
  
## In Python:
In an Jupyter Notebook, I import the csv of hashtags and drop the columns of variables which I don't believe are necessary. I also remove the rows which do not have a hashtag (these specific 'NAs'), because I'm primarily interested in the hashtags used during the German 2021 Bundestag Election.

  
