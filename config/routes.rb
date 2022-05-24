Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :rocks, only: [:new, :create, :show, :index , :destroy ]  do
    resources :requests, only: [:create]
  end

  resources :requests, only: [:show] do
    member do
      patch :decline
      patch :accept
      patch :cancel
    end
  end

  get 'dashboard', to: 'users#dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
