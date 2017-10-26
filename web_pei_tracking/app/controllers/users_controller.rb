class UsersController < ApplicationController
  before_action :set_user, only: :show

  def show; end

  def profile
    redirect_to user_path(current_user)
  end

  private

  def set_user
    @user = User.includes(categories: [:capitals], capitals: [:category])
                .find(params[:id])
  end
end
