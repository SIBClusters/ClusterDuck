class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :social_network_configs  

end
