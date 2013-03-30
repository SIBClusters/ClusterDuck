require 'Twitter'
class Status < ActiveRecord::Base
  attr_accessible :user_id, :post, :status_created_at
  

  def self.get_twitter_timeline(username)
    Twitter.user_timeline(username,{:count=>50})
  end

  def self.save_status_to_database(user,body, creation_date)
    statuses = Status.all
    
    if Status.exists?(post: body)==false
      newstatus = Status.create(user_id: user,post: body, status_created_at: creation_date)
    end
    # return result

    # newstatus.save
    
  end

  def self.get_all_statuses_from_twitter(users)
    users.each do |user|
      get_statuses_from_twitter(user)
    end
    
  end

  def self.delete_status(id)
    Status.destroy(id)
  end


  def self.get_statuses_from_twitter(user)
    tweets = []
    # user_id = Users.get_user_id(user)
    timeline = Status.get_twitter_timeline(user)
    timeline.each do |status|
      body=status.text
      createdat=status.created_at 
      save_status_to_database(1, body, createdat)
    end
  end

  def self.show_all_statuses
    return Status.all.sort_by(&:status_created_at).reverse
    
  end
end
