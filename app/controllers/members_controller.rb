class MembersController < ApplicationController


  layout 'main'

  def index
    @group = Group.find(params[:group_id])
    @members = @group.members.all
    @users = User.all
  end

  def new
    @group = Group.find(params[:group_id])
    @users = User.all
    @member = Member.new
  end

  def create
    group_id = params[:group_id]
    user_id = current_user.id
    @member = Member.new({:user_id => user_id, :group_id => group_id})

    if @member.already_member?(group_id, current_user.id)
      flash[:notice] = "You are already a member of this group"
      redirect_to group_members_path(params[:group_id])
    else
      if @member.save 
        flash[:notice] = "Thank you for joining"
        redirect_to group_members_path(params[:group_id])
      else
        render 'new'
      end
    end
  end

end
