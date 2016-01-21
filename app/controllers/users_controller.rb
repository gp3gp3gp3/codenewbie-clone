class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if user = User.create(user_params)
      session[:user_id] = user.id
      redirect_to :root
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    user = User.find_by(id: params[:id])
    if user.update_attributes(user_params)
      redirect_to user
    else
      redirect_to edit_user_path(user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :password, :twitter_handle, :avatar_url, :bio, :github_username)
  end

end