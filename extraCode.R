##Load the data
setwd("~/Desktop/SwiftKey Corpus/ru_RU")
ru.tweets <- readLines("ru_RU.twitter.txt")
ru.news <-  readLines("ru_RU.news.txt")
ru.blogs <-  readLines("ru_RU.blogs.txt")

##clean news
ru.news2 <- gsub("\\d","",ru.news) #get rid of numbers
ru.news3 <- gsub("\\W"," ",ru.news2) #get rid of punctuation
ru.news4 <- gsub(" +", " ", ru.news3) #replace 2+ spaces with one
ru.news5 <- tolower(ru.news4) #make everything lowercase
ru.news6 <-strsplit(ru.news5, "\\W") #split on non-word characters
ru.news7 <-unlist(ru.news6) #unlist the vector
ru.news.freq <-table(ru.news7) #makes a frequency list of every word
sorted.ru.news.freq<-sort(ru.news.freq, decreasing=T) #sort the frequency list 
write.table(sorted.ru.news.freq, "ruNewsFreqs.csv",sep=",") #make a CSV file with the frequency list

##clean tweets
ru.tweets2 <- gsub("\\d","",ru.tweets) #get rid of numbers
ru.tweets3 <- gsub("\\W"," ",ru.tweets2) #get rid of punctuation
ru.tweets4 <- gsub(" +", " ", ru.tweets3) #replace 2+ spaces with one
ru.tweets5 <- tolower(ru.tweets4) #make everything lowercase
ru.tweets6 <-strsplit(ru.tweets5, "\\W") #split on non-word characters
ru.tweets7 <-unlist(ru.tweets6) #unlist the vector
ru.tweets.freq <-table(ru.tweets7) #makes a frequrucy list of every word
sorted.ru.tweets.freq<-sort(ru.tweets.freq, decreasing=T) #sort the frequrucy list 
write.table(sorted.ru.tweets.freq, "ruTweetFreqs.csv",sep=",") #make a CSV file with the freqqurucy list

###TWEET ANALYSIS
ru.tweet.unigram <- read.csv("ruTweetFreqs.csv", col.names=c("word","tweetFreq"))
tweetTypes <- nrow(ru.tweet.unigram); tweetTypes
tweetTokens <- sum(ru.tweet.unigram$tweetFreq); tweetTokens
head(ru.tweet.unigram,10)
ru.tweet.unigram$tweetFreq[1]/tweetTokens * 100
sum(ru.tweet.unigram$tweetFreq[1:10])/tweetTokens * 100
hapaxes <- ru.tweet.unigram$tweetFreq==1; table(hapaxes)


###NEWS ANALYSIS
ru.news.unigram <- read.csv("ruNewsFreqs.csv",col.names=c("word","newsFreq"))
newsTypes <- nrow(ru.news.unigram); newsTypes
newsTokens <- sum(ru.news.unigram$newsFreq); newsTokens
head(ru.news.unigram,11)
ru.news.unigram$newsFreq[1]/newsTokens * 100
sum(ru.news.unigram$newsFreq[1:10])/newsTokens * 100
hapaxes <- ru.news.unigram$newsFreq==1; table(hapaxes)


#Average of the word "the"
mean(c(ru.news.unigram$newsFreq[2]/newsTokens * 100,ru.blog.unigram$blogFreq[2]/blogTokens * 100,ru.tweet.unigram$tweetFreq[2]/tweetTokens * 100))

#######################################################################

#### Russian
library(Unicode)
setwd("~/Desktop/SwiftKey Corpus/ru_RU")
ru.twitter <- readLines("ru_RU.twitter.txt")
ru.news <-  readLines("ru_RU.news.txt")
ru.blogs <-  readLines("ru_RU.blogs.txt")

##clean news
ru.news2 <- gsub("\\d","",ru.news) #get rid of numbers
ru.news3 <- gsub("\\W"," ",ru.news2) #get rid of punctuation
ru.news4 <- gsub(" +", " ", ru.news3) #replace 2+ spaces with one
ru.news5 <- tolower(ru.news4) #make everything lowercase
ru.news6 <-strsplit(ru.news5, "\\W") #split on non-word characters
ru.news7 <-unlist(ru.news6) #unlist the vector
ru.news.freq <-table(ru.news7) #makes a frequrucy list of every word
sorted.ru.news.freq<-sort(ru.news.freq, decreasing=T) #sort the frequrucy list 
write.table(sorted.ru.news.freq, "ruNewsFreqs.csv",sep=",") #make a CSV file with the freqqurucy list

##clean tweets
ru.tweets2 <- gsub("\\d","",ru.twitter) #get rid of numbers
ru.tweets3 <- gsub("\\W"," ",ru.tweets2) #get rid of punctuation
ru.tweets4 <- gsub(" +", " ", ru.tweets3) #replace 2+ spaces with one
ru.tweets5 <- tolower(ru.tweets4) #make everything lowercase
ru.tweets6 <-strsplit(ru.tweets5, "\\W") #split on non-word characters
ru.tweets7 <-unlist(ru.tweets6) #unlist the vector
ru.tweets.freq <-table(ru.tweets7) #makes a frequrucy list of every word
sorted.ru.tweets.freq<-sort(ru.tweets.freq, decreasing=T) #sort the frequrucy list 
write.table(sorted.ru.tweets.freq, "ruTweetFreqs.csv",sep=",") #make a CSV file with the freqqurucy list

##clean blogs
ru.blogs2 <- gsub("\\d","",ru.blogs) #get rid of numbers
ru.blogs3 <- gsub("\\W"," ",ru.blogs2) #get rid of punctuation
ru.blogs4 <- gsub(" +", " ", ru.blogs3) #replace 2+ spaces with one
ru.blogs5 <- tolower(ru.blogs4) #make everything lowercase
ru.blogs6 <-strsplit(ru.blogs5, "\\W") #split on non-word characters
ru.blogs7 <-unlist(ru.blogs6) #unlist the vector
ru.blogs.freq <-table(ru.blogs7) #makes a frequrucy list of every word
sorted.ru.blogs.freq<-sort(ru.blogs.freq, decreasing=T) #sort the frequrucy list 
write.table(sorted.ru.blogs.freq, "rublogFreqs.csv",sep=",") #make a CSV file with the freqqurucy list
### Finnish
setwd("~/Desktop/SwiftKey Corpus/fi_FI")
fi.twitter <- readLines("fi_FI.twitter.txt")
fi.news <-  readLines("fi_FI.news.txt")
fi.blogs <-  readLines("fi_FI.blogs.txt")


##clean news
fi.news2 <- gsub("\\d","",fi.news) #get rid of numbers
fi.news3 <- gsub("\\W"," ",fi.news2) #get rid of punctuation
fi.news4 <- gsub(" +", " ", fi.news3) #replace 2+ spaces with one
fi.news5 <- tolower(fi.news4) #make everything lowercase
fi.news6 <-strsplit(fi.news5, "\\W") #split on non-word characters
fi.news7 <-unlist(fi.news6) #unlist the vector
fi.news.freq <-table(fi.news7) #makes a frequdecy list of every word
sorted.fi.news.freq<-sort(fi.news.freq, decreasing=T) #sort the frequdecy list 
write.table(sorted.fi.news.freq, "fiNewsFreqs.csv",sep=",") #make a CSV file with the freqqudecy list

##clean tweets
fi.tweets2 <- gsub("\\d","",fi.twitter) #get rid of numbers
fi.tweets3 <- gsub("\\W"," ",fi.tweets2) #get rid of punctuation
fi.tweets4 <- gsub(" +", " ", fi.tweets3) #replace 2+ spaces with one
fi.tweets5 <- tolower(fi.tweets4) #make everything lowercase
fi.tweets6 <-strsplit(fi.tweets5, "\\W") #split on non-word characters
fi.tweets7 <-unlist(fi.tweets6) #unlist the vector
fi.tweets.freq <-table(fi.tweets7) #makes a frequdecy list of every word
sorted.fi.tweets.freq<-sort(fi.tweets.freq, decreasing=T) #sort the frequency list 
write.table(sorted.fi.tweets.freq, "fiTweetFreqs.csv",sep=",") #make a CSV file with the freqqudecy list

##clean blogs
fi.blogs2 <- gsub("\\d","",fi.blogs) #get rid of numbers
fi.blogs3 <- gsub("\\W"," ",fi.blogs2) #get rid of punctuation
fi.blogs4 <- gsub(" +", " ", fi.blogs3) #replace 2+ spaces with one
fi.blogs5 <- tolower(fi.blogs4) #make everything lowercase
fi.blogs6 <-strsplit(fi.blogs5, "\\W") #split on non-word characters
fi.blogs7 <-unlist(fi.blogs6) #unlist the vector
fi.blogs.freq <-table(fi.blogs7) #makes a frequdecy list of every word
sorted.fi.blogs.freq<-sort(fi.blogs.freq, decreasing=T) #sort the frequdecy list 
write.table(sorted.fi.blogs.freq, "fiblogFreqs.csv",sep=",") #make a CSV file with the freqqudecy list

#### Dutch
setwd("~/Desktop/SwiftKey Corpus/de_DE")
de.twitter <- readLines("de_DE.twitter.txt")
de.news <-  readLines("de_DE.news.txt")
de.blogs <-  readLines("de_DE.blogs.txt")

##clean news
de.news2 <- gsub("\\d","",de.news) #get rid of numbers
de.news3 <- gsub("\\W"," ",de.news2) #get rid of punctuation
de.news4 <- gsub(" +", " ", de.news3) #replace 2+ spaces with one
de.news5 <- tolower(de.news4) #make everything lowercase
de.news6 <-strsplit(de.news5, "\\W") #split on non-word characters
de.news7 <-unlist(de.news6) #unlist the vector
de.news.freq <-table(de.news7) #makes a frequdecy list of every word
sorted.de.news.freq<-sort(de.news.freq, decreasing=T) #sort the frequdecy list 
write.table(sorted.de.news.freq, "deNewsFreqs.csv",sep=",") #make a CSV file with the freqqudecy list

##clean tweets
de.tweets2 <- gsub("\\d","",de.twitter) #get rid of numbers
de.tweets3 <- gsub("\\W"," ",de.tweets2) #get rid of punctuation
de.tweets4 <- gsub(" +", " ", de.tweets3) #replace 2+ spaces with one
de.tweets5 <- tolower(de.tweets4) #make everything lowercase
de.tweets6 <-strsplit(de.tweets5, "\\W") #split on non-word characters
de.tweets7 <-unlist(de.tweets6) #unlist the vector
de.tweets.freq <-table(de.tweets7) #makes a frequdecy list of every word
sorted.de.tweets.freq<-sort(de.tweets.freq, decreasing=T) #sort the frequency list 
write.table(sorted.de.tweets.freq, "deTweetFreqs.csv",sep=",") #make a CSV file with the freqqudecy list

##clean blogs
de.blogs2 <- gsub("\\d","",de.blogs) #get rid of numbers
de.blogs3 <- gsub("\\W"," ",de.blogs2) #get rid of punctuation
de.blogs4 <- gsub(" +", " ", de.blogs3) #replace 2+ spaces with one
de.blogs5 <- tolower(de.blogs4) #make everything lowercase
de.blogs6 <-strsplit(de.blogs5, "\\W") #split on non-word characters
de.blogs7 <-unlist(de.blogs6) #unlist the vector
de.blogs.freq <-table(de.blogs7) #makes a frequdecy list of every word
sorted.de.blogs.freq<-sort(de.blogs.freq, decreasing=T) #sort the frequdecy list 
write.table(sorted.de.blogs.freq, "deblogFreqs.csv",sep=",") #make a CSV file with the freqqudecy list