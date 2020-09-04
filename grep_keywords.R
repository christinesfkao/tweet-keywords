library(data.table)
all.files <- list.files(path = "C:/Users/tweet_keywords/tweets",pattern = ".txt")
l <- lapply(all.files, fread, sep=",")
dt <- rbindlist(l)
tweets <- as.list(dt$tweet_text) 
setwd("C:/Users/tweet_keywords")
keywords <- readLines("keywords.txt") # Choose your own keywords
setwd("C:/Users/tweet_keywords/outputs") # Change the destination of output files
for (i in 1:length(keywords)){ 
  tweets_keyword <- tweets[grep(keywords[i], tweets)]
  filename <- paste0("tweets_", length(tweets_keyword), "_", keywords[i], ".csv")
  fwrite(tweets_keyword, file = filename)
}