Rails.application.routes.draw do
  get 'transactions/index'
  get 'home/index'
  get 'home/upload'
  devise_for :users
  resources :users

  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
