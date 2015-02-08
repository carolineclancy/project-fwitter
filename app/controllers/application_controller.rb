require './config/environment'
require './app/models/tweets'

class ApplicationController < Sinatra::Base #inheriting all sorts of info

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

    # tweet1 = Tweet.new("caroline", "hello #firsttweet")
    # tweet2 = Tweet.new("caroline", "hi #secondtweet")
    # tweet3 = Tweet.new("caroline", "#thirdtweet")

    @tweets = Tweet.show_all_tweets

    erb :tweets
  end

  post '/tweets' do
    
    # puts params
    # binding.pry

    new_tweet = Tweet.new(params[:user], params[:message])
    redirect ('/')
  end
end