class Status < ActiveRecord::Base
  # attr_accessible :title, :body

  def self.get_twitter_timeline(username)
    Twitter.user_timeline(username,{:count=>5})
  end
end
