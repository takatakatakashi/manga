class TweetsController < ApplicationController

  
    def index
      @tweets = Tweet
    end
  
    def new
      @tweet = Tweet.new
    end
  
    def create
      Tweet.create(tweet_params)
      # @tweet = tweet.create(tweet_params)
    end
  
    def show
      @tweet = Tweet.find(params[:id])
    end
  
    def destroy
      tweet = Tweet.find(params[:id])
      tweet.destroy
    end
  
    def edit
      @tweet = Tweet.find(tweet_params[:id])
    end
  
    def update
      tweet = Tweet.find(params[:id])
      tweet.update(tweet_params)
    end
  
    private
    def tweet_params
      params.require(:tweet).permit(:name, :text, :image, :tag_id)
    end
  
end
