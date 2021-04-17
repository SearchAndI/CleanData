# CleanData

## Run_analysis.R :
It´s a small piece of code that proceeds from extracting the data from the web into the machine, 
then morph it into a single data table from which a simple filtering and analysis is done.

### The way it works:

- [ ] downloads and decompresses de archive, just as Brian Caffo did several times on the examples.
- [ ] reads the txts one by one as data tables, except for the feature names, because having them as strings would facilitate using them as column names.

- [ ]  c-binds each table with each other by test, or training group, r-binds those and assigns names to the resulting data table.

- [ ] using grep, and the appropriated regular expression, identifies the position of the variables with either "mean" or "std" in their names
- [ ] with that information, extracts and creates a new table with just those columns
- [ ] groups by subject, summarizes and calculates the means by column

- [ ] prints a spreadsheet and outputs a txt of the resulting data table 

It uses the following packages:
- data.table
- reshape2
- dplyr







## Codebook :
All the relevant information about both this repository and the original source of data.




