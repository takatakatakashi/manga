class TagsController < ApplicationController

  def show
    @tweets = Tweet.where(tag_id: params[:id])
  end

end
