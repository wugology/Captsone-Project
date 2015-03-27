##Load the data
setwd("~/Desktop/SwiftKey Corpus/en_US")
en.tweets <- readLines("en_US.twitter.txt")
en.news <-  readLines("en_US.news.txt")
en.blogs <-  readLines("en_US.blogs.txt")

##clean news
en.news2 <- gsub("\\d","",en.news) #get rid of numbers
en.news3 <- gsub("\\W"," ",en.news2) #get rid of punctuation
en.news4 <- gsub(" +", " ", en.news3) #replace 2+ spaces with one
en.news5 <- tolower(en.news4) #make everything lowercase
en.news6 <-strsplit(en.news5, "\\W") #split on non-word characters
en.news7 <-unlist(en.news6) #unlist the vector
en.news.freq <-table(en.news7) #makes a frequency list of every word
sorted.en.news.freq<-sort(en.news.freq, decreasing=T) #sort the frequency list 
write.table(sorted.en.news.freq, "enNewsFreqs.csv",sep=",") #make a CSV file with the freqquency list

##clean tweets
en.tweets2 <- gsub("\\d","",en.tweets) #get rid of numbers
en.tweets3 <- gsub("\\W"," ",en.tweets2) #get rid of punctuation
en.tweets4 <- gsub(" +", " ", en.tweets3) #replace 2+ spaces with one
en.tweets5 <- tolower(en.tweets4) #make everything lowercase
en.tweets6 <-strsplit(en.tweets5, "\\W") #split on non-word characters
en.tweets7 <-unlist(en.tweets6) #unlist the vector
en.tweets.freq <-table(en.tweets7) #makes a frequency list of every word
sorted.en.tweets.freq<-sort(en.tweets.freq, decreasing=T) #sort the frequency list 
write.table(sorted.en.tweets.freq, "enTweetFreqs.csv",sep=",") #make a CSV file with the freqquency list

###TWEET ANALYSIS
en.tweet.unigram <- read.csv("enTweetFreqs.csv", col.names=c("word","tweetFreq"))
tweetTypes <- nrow(en.tweet.unigram); tweetTypes
tweetTokens <- sum(en.tweet.unigram$tweetFreq); tweetTokens
head(en.tweet.unigram,10)
en.tweet.unigram$tweetFreq[1]/tweetTokens * 100
sum(en.tweet.unigram$tweetFreq[1:10])/tweetTokens * 100
hapaxes <- en.tweet.unigram$tweetFreq==1; table(hapaxes)


###NEWS ANALYSIS
en.news.unigram <- read.csv("enNewsFreqs.csv",col.names=c("word","newsFreq"))
newsTypes <- nrow(en.news.unigram); newsTypes
newsTokens <- sum(en.news.unigram$newsFreq); newsTokens
head(en.news.unigram,11)
en.news.unigram$newsFreq[1]/newsTokens * 100
sum(en.news.unigram$newsFreq[1:10])/newsTokens * 100
hapaxes <- en.news.unigram$newsFreq==1; table(hapaxes)


#Average of the word "the"
mean(c(en.news.unigram$newsFreq[2]/newsTokens * 100,en.blog.unigram$blogFreq[2]/blogTokens * 100,en.tweet.unigram$tweetFreq[2]/tweetTokens * 100))

#### Russian
setwd("~/Desktop/SwiftKey Corpus/ru_RU")
ru.twitter <- readLines("ru_RU.twitter.txt")
ru.news <-  readLines("ru_RU.news.txt")
ru.blogs <-  readLines("ru_RU.blogs.txt")




#### Dutch
de.twitter <- readLines("de_DE.twitter.txt")
de.news <-  readLines("de_DE.news.txt")
de.blogs <-  readLines("de_DE.blogs.txt")


### Finnish
setwd("~/Desktop/SwiftKey Corpus/fi_FI")
fi.twitter <- readLines("fi_FI.twitter.txt")
fi.news <-  readLines("fi_FI.news.txt")
fi.blogs <-  readLines("fi_FI.blogs.txt")
