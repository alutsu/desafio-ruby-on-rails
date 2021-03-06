Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  post '/upload', to: 'home#upload'

  resources :transactions, only: %i[index] do
    collection do
      get :search
    end
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
