class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  load_and_authorize_resource :user, unless: :devise_controller?
  load_and_authorize_resource :category, throw: :user
  load_and_authorize_resource :capital, throw: :user
  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end

end
