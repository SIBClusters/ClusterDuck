class UsersController < ApplicationController

layout 'main'
  
before_filter :authenticate_user!

  def show
    # user looking at his account. All other account actions
    # are taken care of by devise
    @user = User.find(params[:id])
    # should also show all groups that user is a member of
  end



end
