Rails.application.routes.draw do

  devise_for :users
  get 'home/index'

  root 'home#index'

  resources :users, only: [:show] do
    resources :capitals, only: [:create, :destroy, :edit]
    resources :categories, only: [:create, :destroy, :edit]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
