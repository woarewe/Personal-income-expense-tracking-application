class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def profile
    redirect_to user_path(current_user)
  end

end
