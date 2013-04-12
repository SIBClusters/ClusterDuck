class StatusesController < ApplicationController

  layout 'main'

  before_filter :authenticate_user!
  
  def update
    @network = params["network"]
    if @network== "twitter"
      users = ['technovangelist','germsvel','ccoughlin_']
      Status.get_all_statuses_from_twitter(users)
    end
  end

  def index
    users = ['technovangelist','germsvel','ccoughlin_', 'Ajaydhesikan']
    Status.get_all_statuses_from_twitter(users)
    @statuses=Status.show_all_statuses
  end

  def clean
    # (110..156).each do |num|
    #   Status.delete_status(num)
    # end
    
  end
  
end
