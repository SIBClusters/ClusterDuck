class SocialNetworkConfig < ActiveRecord::Base
  attr_accessible :network_name
  belongs_to :user
end
