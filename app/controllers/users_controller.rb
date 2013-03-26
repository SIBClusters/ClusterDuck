class UsersController < ApplicationController

  def index
    #should we just redirect this to the main page of the user? so to the show page?
    render 'show'
  end

  def new
    #a new user is creating his/her 
    @user = User.new
  end

  def create
    #save profile
    @user = User.new

    if @user.save 
       flash[:notice] = "New user has been created"
      redirect_to index
    else
      
      render('new') 
    end
  end

  def show
    #user looking at his profile
    @user = User.find(params[:id])
  end

  def edit
    #editing information in profile
    @user = User.find(params[:id])
  end

  def update
    #update profile
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "User has been updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def delete
    #when a user wants to unsubscribe from SCluster
    @user = User.find(params[:id])
    @user.destroy
    #this has to redirect to the main page of the whole application
    # redirect_to :root
  end

end
