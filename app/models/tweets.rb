#models are where the data is stored. where the classes are written
#views are what the user sees
#controllers are the bridges between the models and the views
#tux is similar to irb but it loads up all of your code alreay, so you dont have to copy and paste it like you have to in irb
class Tweet #classes are like a blue print. in this case, the Tweet class hold the various characteristics of each tweet
  attr_accessor :user, :message

  ALL_MESSAGES = []

  def initialize(user, message)
    @user = user
    @message = message
    ALL_MESSAGES << self
  end

  def self.show_all_tweets
    ALL_MESSAGES
  end
end

#new_tweet = Tweet.new("jackson", "hello, this is a tweet")