Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :posts, only: [:index, :new, :create]

  root 'welcome#index'
end
