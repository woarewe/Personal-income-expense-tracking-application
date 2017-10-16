Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :capitals, :categories, only: [:create, :destroy, :new, :edit]
  end
  get 'home/index'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
