#twitter API

install.packages("rtweet")
install.packages("tidytext")
instal.packages("ggplot2")
library(rtweet)

#Twitter developer app details
appname <- "your-app-name"
key <- "yourLongApiKeyHere"
secret <- "yourSecretKeyHere"

#authentication step
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  access_token = access_token,
  access_secret = access_secret)

users <- c("insert_usernames_here")
lookup_tweets <- lookup_users(users)
# extract most recent tweets data
tweets_data(lookup_tweets)

tweet_table_data <- select(tweets_data, user_id, status_id, created_at, screen_name, text)
write.csv(tweet_table_data, "folder_location\\foldername.csv", row.names = FALSE)

