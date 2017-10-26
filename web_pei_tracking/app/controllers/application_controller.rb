class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  load_and_authorize_resource :user, unless: :devise_controller?
  load_and_authorize_resource :category, throw: :user
  load_and_authorize_resource :capital, throw: :user

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end

  protected

  def check_action(status, bad_path:)
    if status
      flash[:notice] = 'Successfully!'
      redirect_to root_path
    else
      flash.now[:alert] = 'Error!'
      render bad_path
    end
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end

