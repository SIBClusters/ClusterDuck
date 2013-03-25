class StatusesController < ApplicationController

  def index
    users = ['technovangelist','germsvel','ccoughlin_']
    @group_feed = []

    users.each do |user|
      timeline = Feed.get_twitter_timeline(user)
      @group_feed += timeline     
    end
  end

end
