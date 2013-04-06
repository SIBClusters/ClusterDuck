class Member < ActiveRecord::Base
  # attr_accessible :title, :body

  # not sure that this one is right!
  belongs_to :users  
  belongs_to :groups
end
