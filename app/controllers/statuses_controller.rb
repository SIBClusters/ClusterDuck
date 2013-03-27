require 'time'
class StatusesController < ApplicationController

  

  def update
    network = params["network"]
    if network== "twitter"
      users = ['technovangelist','germsvel','ccoughlin_']
      Status.get_all_statuses_from_twitter(users)
    end
  end

  def index
    
    @group_feed = []
    @all_tweets=[]
    # @tweets=[]


    

   # @all_tweets=all_tweets.sort_by{|hsh| Time.parse(hsh[:created_at]).strftime("%s").to_i}
  end

end
