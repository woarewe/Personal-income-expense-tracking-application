class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def profile
    redirect_to user_path(current_user)
  end

end
