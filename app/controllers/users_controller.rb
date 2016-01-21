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

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :password, :twitter_handle, :avatar_url, :bio, :github_username)
  end

end