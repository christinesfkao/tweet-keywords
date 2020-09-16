# README.md
This is the README file for ```tweet-keywords```.

Author: [@christinesfkao](https://github.com/christinesfkao)

MMM/YYYY: Sep 2020

## Synopsis
```
Rscript grep_keywords.R
```
This R script helps grepping keywords from tweets provided by the [Information Operations](https://transparency.twitter.com/en/reports/information-operations.html) of Twitter.

## Things to do before running 
- copy and paste all the links of ```.zip``` files you would like to download into ```url.txt```, one url for each line
- make your own list of keywords to ```keywords.txt```, one keyword for each line
- put ```url.txt``` and ```keywords.txt``` into the directory ```/tweet-keywords```

## System requirements

- R version 3.5.1+
- install.packages("data.table")

## Directory
```
tweets/ <all given input files>

outputs/ <all output files>

grep_keywords.R

url.txt <Example: All "tweet information" link locations, updated Sep 5th, 2020>
		 
README.md
```
## Run

```
cd tweet-keywords/tweets
wget -i ../url.txt
unzip '*.zip'

Rscript ../grep_keywords.R
``` 
