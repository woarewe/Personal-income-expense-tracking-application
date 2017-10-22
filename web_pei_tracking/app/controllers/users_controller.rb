class UsersController < ApplicationController
  def show
    @user = User.includes(:categories).find(params[:id])
  end

  def edit
  end

  def profile
    redirect_to user_path(current_user)
  end

end
