class Feed < ActiveRecord::Base
  # attr_accessible :title, :body

  def self.get_timeline(username)
    Twitter.user_timeline(username,{:count=>5})
  end
end
