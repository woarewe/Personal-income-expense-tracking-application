Rails.application.routes.draw do

  devise_for :users

  resources :users, only: :show do
    resources :capitals, except: :index
    resources :categories, except: :index
    resource :report, only: %i[show create], controller: 'report'
  end

  authenticated :user do
    root 'users#profile'
  end

  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end
