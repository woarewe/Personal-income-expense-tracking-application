class HomeController < ApplicationController
  def index
    @user = User.includes(:categories).find(params[:id])
  end
end
