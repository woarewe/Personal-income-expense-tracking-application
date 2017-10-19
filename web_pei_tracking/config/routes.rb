Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :capitals, only: [:create, :destroy, :edit]
    resources :categories, only: [:create, :destroy, :edit]
  end

  authenticated :user do
    root 'users#profile'
  end

  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
