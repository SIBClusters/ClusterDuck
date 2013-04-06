class MembersController < ApplicationController

  layout 'main'

  def index
    @group = Group.find(params[:group_id])
    @members = @group.members.all
  end

  def new
    @group = Group.find(params[:group_id])
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])

    if @member.save 
      flash[:notice] = "Thank you for adding a user"
      redirect_to group_members_path(params[:group_id])
    else
      render 'new'
    end
  end

end
