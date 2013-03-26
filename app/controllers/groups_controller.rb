class GroupsController < ApplicationController


  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new

    if @group.save
      flash[:notice] = "New group has been created"
      redirect_to index
    else
      
      render('new') 
    end

  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(:id)

    if @group.update_attributes(params[:group])
      flash :notice = "Group successfully updated"
      redirect_to @groups
  end

  def delete
    Group.find(params[:id]).destroy
    flash :notice = "Group has been deleted"
    redirect_to @groups
  end


end
