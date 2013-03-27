class Status < ActiveRecord::Base
  # attr_accessible :title, :body
  

  def self.get_twitter_timeline(username)
    Twitter.user_timeline(username,{:count=>5})
  end

  def self.save_status_to_database(body, creation_date, user)
    
    
  end

  def self.get_all_statuses_from_twitter(users)
    users.each do |user|
      get_statuses_from_twitter(user)
    end
  end


  def self.get_statuses_from_twitter(user)
    tweets = []
    # user_id = Users.get_user_id(user)
    timeline = Status.get_twitter_timeline(user)
    
    timeline.each do |status|
      body=status.text
      createdat=status.created_at 
      save_status_to_database(body, createdat, user)
      # tweets<<{tweet_text: body, tweet_date: createdat, tweet_user: user}
    end
    # return tweets
  end
end
