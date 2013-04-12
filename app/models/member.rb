class Member < ActiveRecord::Base
  attr_accessible :user_id, :group_id

  belongs_to :users  
  belongs_to :groups


  #function to check if already a member
  def already_member?(group_id, user_id)
    !Member.where("group_id = ? AND user_id = ?", group_id, user_id).empty?
  end


  #function to get member names instead of ids
end
