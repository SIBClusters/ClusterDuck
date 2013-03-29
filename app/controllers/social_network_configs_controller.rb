class SocialNetworkConfigsController < ApplicationController

  def index
    @configs = SocialNetworkConfig.all
  end

  def show
    @configs = User.find(params[:id]).social_network_configs
  end


end
